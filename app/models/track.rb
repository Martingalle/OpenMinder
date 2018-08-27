class Track < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  belongs_to :genre
  belongs_to :opinion
  has_many :votes

  has_many :users_voting, through: :votes,  :source => 'user'
end
