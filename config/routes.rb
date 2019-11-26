Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :events do
    resources :bookings, only: [:index, :new, :create]
  end
  resources :bookings, only: [:destroy]
  resources :reviews, only: [:index, :new, :create]
  #resources :notifications, only: [:index, :new, :create]

  get '/my-bookings',  to: 'dashboards#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
