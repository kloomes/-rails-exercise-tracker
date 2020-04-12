Rails.application.routes.draw do
  devise_for :users
  root to: 'sessions#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [ :edit, :update, :show ] do
    resources :sessions, only: [ :index, :new, :create ]
  end
  resources :stats, except: :show
  resources :sessions, only: [ :show, :edit, :destroy ]
  resources :cardios
  resources :exercises do
    resources :setsets, only: [ :index, :new, :create ]
  end
  resources :setsets, only: [ :edit, :update ]
end
