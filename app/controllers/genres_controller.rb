class GenresController < ApplicationController
  def show
    @genre = Genre.find(params[:id])
    @opinions_related = Opinion.where(main_genre: @genre) # add all opinions related to this genre
  end
end
