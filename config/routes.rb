Rails.application.routes.draw do
  devise_for :users
  root to: 'workouts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [ :edit, :update, :show ] do
    resources :workouts, only: [ :index, :new, :create ]
  end
  resources :stats, except: :show
  resources :workouts, only: [ :show, :edit, :update, :destroy ] do
    resources :cardios, only: [ :index, :new, :create ]
  end
  resources :cardios, only: [ :show, :edit, :update, :destroy ]
  resources :exercises do
    resources :setsets, only: [ :index, :new, :create ]
  end
  resources :setsets, only: [ :edit, :update, :destroy ]
end
