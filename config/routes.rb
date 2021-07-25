Rails.application.routes.draw do
  devise_for :users
  root to:'users#index'
  resources :users do
    resources :lists, only: [:new, :create, :index]
    resources :rooms, only: [:new, :create]
  end
end
