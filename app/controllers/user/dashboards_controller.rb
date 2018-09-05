class User::DashboardsController < ApplicationController
  def show
    @tracks_added = current_user.tracks_added
    @tracks_voted = current_user.tracks_voted
    @favorite_genre = current_user.genres_appreciations_desc.first[:genre]
    authorize [:user, @tracks_added]
    authorize [:user, @tracks_voted]
  end
end
