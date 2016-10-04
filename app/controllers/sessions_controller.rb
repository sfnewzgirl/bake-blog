class SessionsController < ApplicationController
  def new
    # makes a dummy user to they can fill out the form
    @user = User.new
  end

  # logs user in using a session
  def create
    # does the user exist? check by email
    user = User.find_by_email(user_params[:email])
    if user.nil?
      redirect_to login_path
      # add flash to tell the user something is wrong
    else
      # is this the correct password for that user?
      if user.authenticate(user_params[:password])
        # log them in and start session
        login(user)
        redirect_to root_path
      else
        redirect_to login_in_path
        # give them a different flash message
      end
    end
  end

  def destroy
    logout
    redirect_to root_path
  end

  private
  def user_params
    params.require(:user).permit(:email, :password)
  end
end
