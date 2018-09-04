class User::DashboardsController < ApplicationController
  def show
    @tracks_added = current_user.tracks_added
    @tracks_voted = current_user.tracks_voted
    authorize [:user, @tracks_added]
    authorize [:user, @tracks_voted]
  end
end
