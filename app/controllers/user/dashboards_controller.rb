class User::DashboardsController < ApplicationController
  def show
    @opinions_added = current_user.opinions_added
    @opinions_viewed = current_user.opinions_viewed
    @tracks_added = current_user.tracks_added
    @tracks_voted = current_user.tracks_added
    @votes = current_user.votes
    @genres = current_user.votes
  end
end
