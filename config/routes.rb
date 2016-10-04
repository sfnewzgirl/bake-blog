Rails.application.routes.draw do
  get "/", to: "users#index"
  get "/signup", to: "users#new"

  get "/login", to: "sessions#new"
  # some route to update session
  get "/logout", to: "sessions#destoy"

end
