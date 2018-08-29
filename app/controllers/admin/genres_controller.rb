class Admin::GenresController < ApplicationController
  before_action :set_genre, only: [:update, :destroy]

  def index
    @genres = Genre.all
    @genre_new = Genre.new
  end

  def create
    if Genre.create(genre_params)
      @genre_new = Genre.new
      redirect_to admin_genres_path
    else
      render :index
    end
  end

  def update
    if @genre.update(genre_params)
      redirect_to admin_genres_path
    else
      render :index
    end
  end

  def destroy
    if @genre.update(genre_params)
      redirect_to admin_genres_path
    else
      render :index
    end
  end

  private

  def set_genre
    @genre = Genre.find(params[:id])
  end

  def genre_params
    params.require(genre).permit(:name, :photo)
  end
end
