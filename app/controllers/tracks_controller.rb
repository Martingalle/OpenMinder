class TracksController < ApplicationController
  def create
    @opinion = Opinion.find(params[:opinion_id])
    track = Track.new(track_params)
    track.opinion = @opinion
    track.genre = Genre.order('RANDOM()').first
    track.creator = current_user
    if track.save
      @track_new = Track.new
      redirect_to opinion_path(@opinion)
    else
      render 'opinions/show'
    end
    # run update_genres for opinion
  end

  def upvote
    vote = Vote.new
    vote.track = Track.find(params[:format])
    vote.user = current_user
    vote.status = 'up'
    if vote.save
      redirect_to opinion_path(Track.find(params[:opinion_id]))
    else
      render 'opinions/show'
    end
  end

  def downvote
    vote = Vote.new
    vote.track = Track.find(params[:format])
    vote.user = current_user
    vote.status = 'down'
    if vote.save
      redirect_to opinion_path(Track.find(params[:opinion_id]))
    else
      render 'opinions/show'
    end
  end

  private

  def track_params
    params.require(:track).permit(:audio_url, :genre, :argument)
  end
end
