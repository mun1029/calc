Rails.application.routes.draw do
  devise_for :users
  root to:'users#index'
  resources :users
  resources :lists, only: [:new, :create, :index, :edit, :update]
  resources :rooms, only: [:new, :create]
  
end
