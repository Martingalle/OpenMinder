class User::DashboardsController < ApplicationController
  def show
    @tracks_added = current_user.tracks_added
    @tracks_voted = current_user.tracks_voted

    @favorite_genre = current_user.genres_appreciations_desc.first[:genre]
    @favorite_genre_match = false
    @discover = @favorite_genre.opinions.uniq
    discover_size = @discover.size
    @favorite_genre_match = true if discover_size >= 2

    if discover_size >= 3
      @discover = @favorite_genre.opinions.uniq[0..2]
    else
      @discover = @favorite_genre.opinions.uniq
      @discover << Opinion.order('RANDOM()').limit(3 - discover_size)
    end
    @discover = @discover.flatten.uniq
    authorize [:user, @tracks_added]
    authorize [:user, @tracks_voted]
  end
end
