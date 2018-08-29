class Track < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  belongs_to :genre
  belongs_to :opinion
  has_many :votes, dependent: :destroy

  has_many :users_voting, through: :votes,  :source => 'user'

  before_create :set_genre, :set_audio_url

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
    self.genre = Genre.order('RANDOM()').first
  end

  def set_audio_url
    self.audio_url = 'www.audio-' << rand(1..9).to_s << rand(1..9).to_s << '.com'
  end
end
