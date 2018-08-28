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

  def set_genres
    # set_opinion
    # # => @opinion
    # genres = @opinion.genres
    # # => [jazz, rock, jazz, metal, rap, metal, jazz...]
    # genres_to_hash = genres.group_by(&:itself)
    # # => {'jazz'  => ['jazz', 'jazz', 'jazz'],
    # #     'rock'  => ['rock'],
    # #     'metal' => ['metal', 'metal']
    # #     'rap'   => ['rap']}
    # genres_counts = {}
    # # => {}
    # genres_to_hash.each { |k, v| genres_counts[k] = v.count }
    # # => {'jazz'  => 3,
    # #     'rock'  => 1,
    # #     'metal' => 2
    # #     'rap'   => 1}
    # r_sorted_genres = counts.sort_by { |k, v| v }
    # # => {'rock'  => 1,
    # #     'rap'   => 1,
    # #     'metal' => 2,
    # #     'jazz'  => 3}
    # @sorted_genres = r_sorted_genres.reverse
    # # => {'jazz'  => 3,
    # #     'metal' => 2,
    # #     'rap'   => 1,
    # #     'rock'  => 1}
    # @main_genre = @sorted_genres[0].first
    # # => 'jazz'
    # @secondary_genre = @sorted_genres[1].first
    # # => 'metal'
  end

  def set_related_opinions
  end
end
