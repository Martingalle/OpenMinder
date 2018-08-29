class Admin::TracksController < ApplicationController
  before_action :set_genre, only: [:update, :destroy]

  def index
    @tracks = Track.all
    # @tracks_pending = Track.where(approved: false)
    # @tracks_losing = Track.all.select do |track|
    #   track.score < 0
    # end
    # @tracks_pending = Track.where(approved: false)
    # @tracks_without_opinion = Track.where(opinion: Nil)
    # @tracks_without_genre = Track.where(genre: Nil)
  end

  def update
    if @track.update(track_params)
      redirect_to admin_tracks_path
    else
      render :index
    end
  end

  def destroy
    if @track.update(track_params)
      redirect_to track_path(@track)
    else
      render :index
    end
  end

  private

  def set_track
    @track = Track.find(params[:id])
  end

  def track_params
    params.require(track).permit(:name, :artist, :artist_location, :album, :argument, :photo, :audio_url, :genre_id, :opinion_id)
  end
end
