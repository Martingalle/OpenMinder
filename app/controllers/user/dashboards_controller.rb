class User::DashboardsController < ApplicationController
  def show
    @tracks_added = current_user.tracks_added
    @tracks_voted = current_user.tracks_voted
    unless current_user.genres_appreciations_desc.nil?
      @favorite_genre = current_user.genres_appreciations_desc.first[:genre]
      @second_favorite_genre = current_user.genres_appreciations_desc[1][:genre]
      @third_favorite_genre = current_user.genres_appreciations_desc[2][:genre]
    end
    authorize [:user, @tracks_added]
    authorize [:user, @tracks_voted]
  end
end
