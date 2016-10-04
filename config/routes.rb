Rails.application.routes.draw do
  get "/", to: "users#index"
  get "/signup", to: "users#new"
  post "/users", to: "users#create"

  get "/login", to: "sessions#new"
  # some route to update session
  get "/logout", to: "sessions#destoy"

end
