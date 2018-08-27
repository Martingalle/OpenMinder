class Opinion < ApplicationRecord
  belongs_to :user_creator, class_name: 'User'
  has_many :tracks

  has_many :genres, through: :tracks
end
