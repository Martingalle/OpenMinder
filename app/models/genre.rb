class Genre < ApplicationRecord
  has_many :tracks
  has_many :opinions, through: :tracks

  def main_related_opinions
    Opinion.all.select do |opinion|
      opinion.main_genre == self
    end
  end

  def secondary_related_opinions
    Opinion.all.select do |opinion|
      opinion.secondary_genre == self
    end
  end
end
