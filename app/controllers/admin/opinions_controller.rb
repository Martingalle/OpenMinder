class Admin::OpinionsController < ApplicationController
  before_action :set_genre, only: [:update, :destroy]

  def index
    @opinions = Opinion.all
    # @opinions_pending = Opinion.where(approved: false)
  end

  def update
    if @opinion.update(opinion_params)
      redirect_to admin_opinions_path
    else
      render :index
    end
  end

  def destroy
    if @opinion.update(opinion_params)
      redirect_to admin_opinions_path
    else
      render :index
    end
  end

  private

  def set_opinion
    @opinion = Opinion.find(params[:id])
  end

  def opinion_params
    params.require(opinion).permit(:name, :description)
  end
end
