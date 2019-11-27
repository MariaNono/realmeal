Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  root to: 'pages#home'
  resources :events do
    resources :bookings, only: [:show, :index, :new, :create, :update]
  end
  resources :bookings, only: [:destroy]
  resources :reviews, only: [:index, :new, :create]
  #resources :notifications, only: [:index, :new, :create]

  get '/mybookings',  to: 'dashboards#index'
  get '/myhostings',  to: 'dashboards#list'
  get '/profile/:id',   to: 'profiles#show', as: :profile

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
