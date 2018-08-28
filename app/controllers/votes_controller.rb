class VotesController < ApplicationController
  def upvote
    vote = Vote.new
    vote.track = Track.find(params[:track_id])
    vote.user = current_user
    vote.status = 'up'
    if vote.save
      redirect_to opinion_path(Track.find(params[:opinion_id])
    else
      render 'opinions/show'
    end
  end

  def downvote
    vote = Vote.new
    vote.track = Track.find(params[:track_id])
    vote.status = 'down'
    vote.user = current_user
    if vote.save
      redirect_to opinion_path(Track.find(params[:track_id]).opinion)
    else
      render 'opinions/show'
    end
  end

  def update
    #
  end
end
