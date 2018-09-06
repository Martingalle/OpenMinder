class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :track

  validates :user, uniqueness: { scope: :track,
    message: "You already voted for this track!" }
end
