Rails.application.routes.draw do
  root "welcome#index"

  devise_for :users
  devise_scope :users do
    get "/login", to: "sessions#new"
    post "/login", to: "sessions#create"
    delete "/logout", to: "sessions#destroy"
  end
  resources :users
  get "/dashboard/:id", to: 'dashboard#show'



  resources :requests, only: [:show, :new, :create]

  namespace :admin do
    resources :users, only: [:new, :create, :update, :delete]
    get "/dashboard", to: 'users#show'
    resources :requests, only: [:index]
  end

end
