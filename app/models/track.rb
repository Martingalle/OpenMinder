class Track < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  belongs_to :genre
  belongs_to :opinion
  has_many :votes, dependent: :destroy

  has_many :users_voting, through: :votes,  :source => 'user'

  before_validation :set_genre

  def upvotes
    self.votes.count
  end

  private

  def set_genre
    self.genre = Genre.order('RANDOM()').first if self.genre.nil?
  end
end
