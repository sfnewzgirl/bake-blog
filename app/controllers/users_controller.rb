class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    if user.save
      login(user)
      redirect_to root_path
    else
      redirect_to new_user_path
      # add flash message that something went wrong
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
