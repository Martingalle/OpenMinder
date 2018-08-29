class Admin::UsersController < ApplicationController
  before_action :set_user, only: [:update]

  def index
    @users = User.all
  end

  # def update
  #   if @user.update(user_params)
  #     redirect_to admin_users_path
  #   else
  #     render :index
  #   end
  # end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    # params.require(user).permit(:freeze)
  end
end
