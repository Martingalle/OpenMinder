class Api::SearchesController < ApplicationController
  # skip_before_action :authenticate_user!, only: :show

  def show
    if params[:query]
      render json: YoutubeApi.search(params[:query])
    else
      render json: []
    end
  end
end
