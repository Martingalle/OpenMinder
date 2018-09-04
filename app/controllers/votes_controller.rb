class VotesController < ApplicationController

  def create
    @track = Track.find(params[:track])
    @opinion = @track.opinion
    @vote = Vote.new(user: current_user, track: @track)
    authorize @vote

    ap "coucou"
    # render 'create.js.erb'


    # if @vote.save
    #   respond_to do |format|
    #     format.html { redirect_to opinion_path(@opinion) }
    #     format.js  # <-- will render `app/views/votes/create.js.erb`
    #   end
    # else
    #   respond_to do |format|
    #     format.html { render 'opinions/show' }
    #     format.js  # <-- will render `app/views/votes/create.js.erb`
    #   end
    # end
  end

  def destroy
    @track = Track.find(params[:track])
    @opinion = @track.opinion
    @vote = Vote.find(params[:id])
    authorize @vote
    if @vote.destroy
      respond_to do |format|
        format.html { redirect_to opinion_path(@opinion) }
        format.js  # <-- will render `app/views/votes/destroy.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'opinions/show' }
        format.js  # <-- will render `app/views/votes/destroy.js.erb`
      end
    end
  end
end
