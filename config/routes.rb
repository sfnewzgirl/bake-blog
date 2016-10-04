Rails.application.routes.draw do
  root to: "users#index"

  get "/signup", to: "users#new", as: "new_user"
  post "/users", to: "users#create"

  get "/login", to: "sessions#new"
  post "/sessions", to: "sessions#create", as: "sessions"

  get "/logout", to: "sessions#destoy"

end
