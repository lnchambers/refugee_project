Rails.application.routes.draw do

  devise_for :users
  get "/dashboard/:id", to: 'dashboard#show'

  root "welcome#index"

  devise_scope :sessions do
    get "/login", to: "sessions#new"
    post "/login", to: "sessions#create"
    delete "/logout", to: "sessions#destroy"
  end

  resources :requests, only: [:show, :new, :create]

  namespace :admin do
    resources :users, only: [:new, :create, :update, :delete]
    get "/dashboard", to: 'users#show'
    resources :requests, only: [:index]
  end

end
