class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :opinions_added, class_name: 'Opinion', foreign_key: :creator, dependent: :destroy
  has_many :tracks_added, class_name: 'Track', foreign_key: :creator, dependent: :destroy

  has_many :votes, dependent: :destroy
  has_many :tracks_voted, through: :votes, source: 'track'
  has_many :genres, through: :tracks_added
  has_many :opinions_viewed, through: :tracks_voted, source: 'opinion'

  before_create :set_photo

  validates :username, presence: true, length: {
    minimum: 3,
    maximum: 15,
    too_short: "%{count} characters is the minimum allowed",
    too_long: "%{count} characters is the maximum allowed" }

  def genres_appreciations
    return nil if self.tracks_added.empty? && self.tracks_voted.empty?
    genres_id_added = {}
    genres_id_voted = {}
    Genre.all.each do |genre|
      genres_id_added[genre.id] = 0
      genres_id_voted[genre.id] = 0
    end
    self.tracks_added.each do |track|
      genres_id_added[track.genre.id] += 1
    end
    self.tracks_voted.each do |track|
      genres_id_voted[track.genre.id] += 1
    end

    genres_appreciations = []
    Genre.all.each do |genre|
      hash = {}
      hash[:genre] = genre
      hash[:added] = genres_id_added[genre.id]
      hash[:voted] = genres_id_voted[genre.id]
      hash[:score] = hash[:added] * 3 + hash[:voted]
      genres_appreciations << hash
    end
    genres_appreciations
  end

  def genres_appreciations_desc
    return nil if self.tracks_added.empty? && self.tracks_voted.empty?
    genres_appreciations.sort_by { |hash| hash[:score] }.reverse
  end

  def set_photo
    self.photo = "avatar_#{rand(1..50)}.png"
    self.photo = "avatar_22.png" if self.username == 'titou'
  end
end

