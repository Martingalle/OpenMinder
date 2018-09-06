class Opinion < ApplicationRecord
  include PgSearch
  belongs_to :creator, class_name: 'User'
  belongs_to :genre
  has_many :tracks, dependent: :destroy
  has_many :genres, through: :tracks

  validates :name, presence: true, length: {
    minimum: 20,
    maximum: 140,
    too_short: "%{count} characters is the minimum allowed",
    too_long: "%{count} characters is the maximum allowed" }
  validates :description, presence: true, length: {
    minimum: 100,
    maximum: 350,
    too_short: "%{count} characters is the minimum allowed",
    too_long: "%{count} characters is the maximum allowed" }
  validates :genre, presence: true

  def genres_occurrences
    genres_id_occurrences = {}
    Genre.all.each { |genre| genres_id_occurrences[genre.id] = 0 }
    # populate the hash with keys corresponding to genres id
    # => {1: 0, 2: 0, 3: 0, 4: 0, 5: 0, 6: 0}

    self.genres.each { |genre| genres_id_occurrences[genre.id] += 1 }
    # populate the hash with values corresponding to
    # the number of time an opinion contains a genre
    # => {1: 2, 2: 4, 3: 1, 4: 0, 5: 0, 6: 3}

    genres_occurences = []
    genres_id_occurrences.each do |key, value|
      hash = {}
      hash[:genre] = Genre.find(key)
      hash[:count] = value
      genres_occurences << hash
    end
    genres_occurences
    # => [{genre: <Genre>, count: 5}, {genre: <Genre>, count: 13} ...]
  end

  def genres_occurrences_desc
    return genres_occurrences if self.genres.empty?
    genres_occurrences.sort_by { |hash| hash[:count] }.reverse
    # order the hash by value, descending
    # => [{genre: <Genre>, count: 13}, {genre: <Genre>, count: 5} ...]
  end

  def main_genre
    self.genre if self.genres.empty?
    genres_occurrences_desc[0][:genre]
  end

  def secondary_genre
    return nil if self.genres.empty? || genres_occurrences_desc[1][:count] < 4
    genres_occurrences_desc[1][:genre]
  end

  def all_genres
    all_genres = []
    all_genres << self.genre
    all_genres << main_genre unless main_genre == self.genre
    all_genres << secondary_genre unless secondary_genre.nil?
    all_genres
  end

  def related_opinions
    Opinion.all.reject do |opinion|
      (opinion.all_genres & self.all_genres).empty?
    end
  end

  def self.random(count)
    Opinion.order('RANDOM()').limit(count)
  end


  # ---- search ----

  pg_search_scope :search_by_main_genre_and_secondary_genre,
    against: [ :genre, :main_genre, :secondary_genre ],
    using: {
      tsearch: { prefix: true }
    }


end
