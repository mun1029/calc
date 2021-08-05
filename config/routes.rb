Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'framework', to: 'users/registrations#new_framework'
    post 'framework', to: 'users/registrations#create_framework'
  end
  root to:'users#index'
  resources :users do
    member do
      get :following, :followers,:message
    end
  end
  resources :relationships,       only: [:create, :destroy]
  resources :lists,               only: [:new, :create, :show, :destroy, :edit, :update]
  resources :rooms,               only: [:show, :new, :create, :destroy] do
    resources :messages,          only: [:index,  :create]
  end
end
