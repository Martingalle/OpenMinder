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
    votes('up')
  end

  def downvote
    votes('down')
  end

  private

  def track_params
    params.require(:track).permit(:audio_url, :genre, :argument)
  end

  def votes(status)
    opinion = Track.find(params[:opinion_id])
    track = Track.find(params[:track])
    # ---------------------------------------------------------
    # check if current_user has already voted on this track:
    # => if there is not vote => create a new instance
    # => if there is a vote   => update the instance
    # ---------------------------------------------------------
    if Vote.where(user: current_user).where(track: track).any? # already voted
      vote = Vote.where(user: current_user).where(track: track).first
      # check if the user want to unvote (same status) or to change vote (other status)
      if status == vote.status # user want to unvote => destroy vote
        if vote.destroy # check if destroy works
          redirect_to opinion_path(opinion)
        else # if destroy doesn't work
          render 'opinions/show'
        end
      else # user want to change vote => update vote status
        vote.status = status
        vote.save
        redirect_to opinion_path(opinion)
      end
    else
      vote = Vote.new(
        user: current_user,
        track: track,
        status: status
      )
      if vote.save
        redirect_to opinion_path(opinion)
      else
        render 'opinions/show'
      end
    end
  end
end
