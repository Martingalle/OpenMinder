class Opinion < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  has_many :tracks
  has_many :genres, through: :tracks

  def genres_occurrences
    genres_occurrences = {}
    Genre.all.each { |genre| genres_occurrences[genre.id] = 0 }
    # populate the hash with keys corresponding to genres id
    # => {1: 0, 2: 0, 3: 0, 4: 0, 5: 0, 6: 0}

    self.genres.each { |genre| genres_occurrences[genre.id] += 1 }
    # populate the hash with values corresponding to
    # the number of time an opinion contains a genre
    # => {1: 2, 2: 4, 3: 1, 4: 0, 5: 0, 6: 3}

    genres_occurrences
  end

  def genres_occurrences_desc
    return genres_occurrences if self.genres.empty?
    genres_occurrences.sort_by { |k, v| v }.reverse
    # order the hash by value, descending
    # => {2: 4, 6: 3, 1: 2, 3: 1, 4: 0, 5: 0}
  end

  def main_genre
    return nil if self.genres.empty?
    Genre.find(genres_occurrences_desc[0].first)
  end

  def secondary_genre
    return nil if self.genres.empty?
    Genre.find(genres_occurrences_desc[1].first)
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
