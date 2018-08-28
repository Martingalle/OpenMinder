class Track < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  belongs_to :genre
  belongs_to :opinion
  has_many :votes

  has_many :users_voting, through: :votes,  :source => 'user'

  def upvotes
    self.votes.select { |vote| vote.status == 'up' }.count
  end

  def downvotes
    self.votes.select { |vote| vote.status == 'down' }.count
  end

  def score
    upvotes - downvotes
  end
end
