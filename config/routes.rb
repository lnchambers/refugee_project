Rails.application.routes.draw do
  
  get "/dashboard/:id", to: 'dashboard#show'

  root "welcome#index"

  get "/login", to: "sessions#new"

  post "/login", to: "sessions#create"

  delete "/logout", to: "sessions#destroy"

  resources :requests, only: [:show, :new, :create]

  namespace :admin do
    resources :users, only: [:new, :create, :update, :delete]
    get "/dashboard", to: 'users#show'
  end

end
