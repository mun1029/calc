Rails.application.routes.draw do
  devise_for :users
  root to:'users#index'
  resources :users
  resources :rooms, only: [:new, :create]
end
