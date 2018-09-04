class VotesController < ApplicationController

  def create
    @track = Track.find(params[:track])
    @opinion = @track.opinion
    @vote = Vote.new(user: current_user, track: @track)
    authorize @vote
    if @vote.save
      render 'toggle'
    else
      render 'opinions/show'
    end
  end

  def destroy
    @vote = Vote.find(params[:id])
    authorize @vote
    if @vote.destroy
      render 'toggle'
    else
      render 'opinions/show'
    end
  end
end
