Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :events do
    resources :bookings, only: [:show, :index, :new, :create, :update]
  end
  resources :bookings, only: [:destroy]
  resources :reviews, only: [:index, :new, :create]
  resources :users, only: [:show]
  #resources :notifications, only: [:index, :new, :create]

  get '/mybookings',  to: 'dashboards#index'
  get '/myhostings',  to: 'dashboards#list'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
