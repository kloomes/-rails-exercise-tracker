Rails.application.routes.draw do
  devise_for :users
  root to: 'workouts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [ :edit, :update, :show ] do
    resources :workouts, only: [ :index, :new, :create ] do
      resources :cardios, only: [ :index, :new, :create ]
      resources :exercises do
        resources :setsets, only: [ :index, :new, :create ]
      end
    end
  end
  resources :stats, except: :show
  resources :workouts, only: [ :show, :edit, :update, :destroy ]
  resources :cardios, only: [ :show, :edit, :update, :destroy ]
  resources :setsets, only: [ :edit, :update, :destroy ]
end
