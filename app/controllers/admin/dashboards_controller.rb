class Admin::DashboardsController < ApplicationController
  def show
    @opinions = Opinion.all
    @genres = Genre.all
    @tracks = Track.all
    @users = User.all
    # @opinions_pending = Opinion.where(approved: false)
    # @tracks_pending = Track.where(approved: false)
  end
end
