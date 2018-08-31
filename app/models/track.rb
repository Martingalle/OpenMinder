class Track < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  belongs_to :genre
  belongs_to :opinion
  has_many :votes, dependent: :destroy

  has_many :users_voting, through: :votes,  :source => 'user'

  before_validation :set_genre#, :set_name

  def upvotes
    self.votes.select { |vote| vote.status == 'up' }.count
  end

  def downvotes
    self.votes.select { |vote| vote.status == 'down' }.count
  end

  def score
    upvotes - downvotes
  end

  private

  def set_genre
    self.genre = Genre.order('RANDOM()').first if self.genre.nil?
  end

  # require 'faker'

  # def set_name
  #   self.name = Faker::Pokemon.move
  # end
end
