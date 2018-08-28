class GenresController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  def show
    # ---------------------------------------------------------
    # USER STORIES
    # - displaying genre informations
    # - displaying main opinions related to the genre => instance methods
    # - displaying secondary opinions related to the genre => instance methods
    # ---------------------------------------------------------
    @genre = Genre.find(params[:id])
  end
end
