class Opinion < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  has_many :tracks
  has_many :genres, through: :tracks

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
    return nil if self.genres.empty?
    genres_occurrences_desc[0][:genre]
  end

  def secondary_genre
    return nil if self.genres.empty?
    genres_occurrences_desc[1][:genre]
  end

  def related_opinions
    Opinion.all.select do |opinion|
      opinion.main_genre == self.main_genre
    end
  end

  def self.random(count)
    Opinion.order('RANDOM()').limit(count)
  end
end
