class TracksController < ApplicationController
  before_action :set_opinion, only: [:create, :update, :destroy, :upvote]
  before_action :set_track, only: [:update, :destroy, :upvote]

  def create
    track = Track.new(track_params)
    track.opinion = @opinion
    track.creator = current_user
    if track.save
      redirect_to opinion_path(@opinion)
    else
      render_opinion_show
    end
  end

  # ! admin only
  def update
    if @track.update(track_params)
      redirect_to opinion_path(@opinion)
    else
      render_opinion_show
    end
  end

  # ! admin only
  def destroy
    if @track.destroy
      redirect_to opinion_path(@opinion)
    else
      render_opinion_show
    end
  end

  def upvote
    # ---------------------------------------------------------
    # check if current_user has already voted on this track
    # if yes: delete, if no: create
    # ---------------------------------------------------------
    @vote = Vote.where(user: current_user).where(track: @track).first
    if @vote.nil?
      @vote = Vote.new(user: current_user, track: @track)
      if @vote.save
        redirect_to opinion_path(@opinion)
      else
        render_opinion_show
      end
    else
      if @vote.destroy # try to destroy vote
        redirect_to opinion_path(@opinion)
      else
       render_opinion_show
      end
    end
  end

  private

  def track_params
    params.require(:track).permit(:name, :photo, :audio_url, :genre_id, :argument)
  end

  def set_opinion
    @opinion = Opinion.find(params[:opinion_id])
  end

  def set_track
    @track = Track.find(params[:track])
    authorize @track
  end

  def render_opinion_show
    @track_new = Track.new
    @new = params[:new] || false
    @opinion = Opinion.find(params[:opinion_id])
    @youtube_ids = @opinion.tracks.pluck(:youtube_id)
    @tracks_desc = @opinion.tracks.order(created_at: :desc)
    render 'opinions/show'
  end
end
