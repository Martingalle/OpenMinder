class TracksController < ApplicationController
  before_action :set_opinion, only: [:create, :update, :destroy]
  before_action :set_track, only: [:update, :destroy]

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
    vote('up')
  end

  def downvote
    vote('down')
  end

  private

  def track_params
    params.require(:track).permit(:name, :photo, :audio_url, :genre_id, :argument)
  end

  def set_opinion
    @opinion = Opinion.find(params[:opinion_id])
    authorize @opinion
  end

  def set_track
    @track = Track.find(params[:id])
    authorize @track
  end

  def render_opinion_show
    @track_new = Track.new
    @new = params[:new] || false
    render 'opinions/show'
  end

  def vote(status)
    # ---------------------------------------------------------
    # check if current_user has already voted on this track:
    # => if there is not vote => create a new instance
    # => if there is a vote   => update the instance
    # ---------------------------------------------------------
    if Vote.where(user: current_user).where(track: @track).any? # already voted
      vote = Vote.where(user: current_user).where(track: @track).first
      # check if the user want to unvote (same status) or to change vote (other status)
      if status == vote.status # user want to unvote => destroy vote
        render_opinion_show unless vote.destroy
      else # user want to change vote => update vote status
        vote.status = status
        vote.save
      end
      redirect_to opinion_path(@opinion)
    else
      vote = Vote.new(
        user: current_user,
        track: @track,
        status: status
      )
      if vote.save
        redirect_to opinion_path(@opinion)
      else
        render_opinion_show
      end
    end
  end
end
