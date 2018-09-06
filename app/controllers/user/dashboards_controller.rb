class User::DashboardsController < ApplicationController
  def show
    @tracks_added = current_user.tracks_added
    @tracks_voted = current_user.tracks_voted

    @favorite_genre_match = false
    if current_user.genres_appreciations_desc.nil?
      @discover = Opinion.order('RANDOM()').limit(3)
    else
      @favorite_genre = current_user.genres_appreciations_desc.first[:genre]
      @discover = @favorite_genre.opinions.uniq
      @favorite_genre_match = true if @discover.size >= 2
      if @discover.size >= 4
        @discover = @favorite_genre.opinions.uniq[0..3]
      else
        @discover = @favorite_genre.opinions.uniq
      end
    end
    authorize [:user, @tracks_added]
    authorize [:user, @tracks_voted]
  end
end
