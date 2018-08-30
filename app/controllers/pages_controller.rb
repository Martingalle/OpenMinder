class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @opinions = policy_scope(Opinion).order(created_at: :desc)
    @random_opinions = @opinions.sample(6)
    @opinion_new = Opinion.new
  end
end
