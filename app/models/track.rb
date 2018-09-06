class Track < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  belongs_to :opinion
  belongs_to :genre
  has_many :votes, dependent: :destroy

  has_many :users_voting, through: :votes,  :source => 'user'

  before_create :set_genre

  def upvotes
    self.votes.count
  end

  private

  def set_genre
    if self.genre.nil?
      self.genre = self.opinion.genre
    end
  end
end
