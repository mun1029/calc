Rails.application.routes.draw do
  devise_for :users
  root to:'users#index'
  resources :users 
  resources :lists, only: [:new, :create, :index, :destroy, :edit, :update]
  resources :rooms, only: [:show, :new, :create, :destroy] do
    resources :messages, only: [:index,  :create]
  end
end
