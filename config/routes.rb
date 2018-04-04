Rails.application.routes.draw do

  root "welcome#index"

  get "/login", to: "sessions#new"

  post "/login", to: "sessions#create"

  delete "/logout", to: "sessions#destroy"

  get "/dashboard", to: 'dashboard#show'

  resources :requests, only: [:show, :new, :create]

  namespace :admin do
    resources :users, only: [:new, :create, :update, :delete]
    get "/dashboard", to: 'users#show'
  end

end
