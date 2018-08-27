class Opinion < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  has_many :tracks
  has_many :genres, through: :tracks
end
