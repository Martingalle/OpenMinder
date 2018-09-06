class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :track

  validates :user, uniqueness: { scope: :track,
    message: "you already voted for this track" }
end
