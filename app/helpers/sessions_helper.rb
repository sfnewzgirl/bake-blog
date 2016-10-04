module SessionsHelper
  def login(user)
    session[:user_id] = user.id
  end

  def current_user
    # return current user based on session
  end

  def logged_in?
    # is the user logged in?
  end

  def logout
    session[:user_id] = nil
  end
end
