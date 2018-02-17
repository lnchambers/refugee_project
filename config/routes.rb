Rails.application.routes.draw do

  root "welcome#index"

  get "/about", :to => "about#index"

  get "/login", to: "sessions#new"

  post "/login", to: "sessions#create"

  delete "/logout", to: "sessions#destroy"

end
