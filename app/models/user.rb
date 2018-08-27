class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :opinions_added, class_name: 'Opinion', foreign_key: :creator
  has_many :tracks_added, class_name: 'Track', foreign_key: :creator

  has_many :votes
  has_many :tracks_voted, through: :votes, source: 'track'
  has_many :genres, through: :tracks_added
  has_many :opinions_viewed, through: :tracks_voted, source: 'opinion'
end
