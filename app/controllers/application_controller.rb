class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include SessionsHelper

  # you can put a helper function here
  # def login
  #
  # end
end
