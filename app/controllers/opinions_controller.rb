class OpinionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_opinion, only: [:show]
  before_action :set_genres, only: [:show]

  def index
    @opinions = Opinion.all
    @random_opinions = Opinion.order('RANDOM()').limit(6)
    @opinion_new = Opinion.new
  end

  def show
    # modal to add a track if @new
    @track_new = Track.new
  end

  def create
    opinion = Opinion.new(opinion_params)
    opinion.creator = current_user
    @new = true
    if opinion.save
      redirect_to opinion_path(opinion)
    else
      @opinions = Opinion.all
      @random_opinions = Opinion.order('RANDOM()').limit(6)
      @opinion_new = Opinion.new
      render :index
    end
  end

  private

  def set_opinion
    @opinion = Opinion.find(params[:id])
  end

  def opinion_params
    params.require(:opinion).permit(:name, :description)
  end

  def related_opinions
  end
end
