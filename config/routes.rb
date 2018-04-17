Rails.application.routes.draw do
  root "welcome#index"

  devise_for :users
  devise_scope :users do
    get "/login", to: "sessions#new"
    post "/login", to: "sessions#create"
    delete "/logout", to: "sessions#destroy"
  end
  resources :users

  resources :requests, only: [:show, :new, :create]

  namespace :admin do
    resources :users, only: [:new, :create]
    resources :requests, only: [:index]
  end

end
