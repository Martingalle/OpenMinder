Rails.application.routes.draw do
  devise_for :users
  root to: 'opinions#index'

  resources :opinions, only: [:index, :show, :create] do
    # !!!!!! add update and destroy for admin only
    resources :tracks, only: [:index, :create]
    # !!!!!! add update and destroy for admin only
    post 'upvote', to: 'tracks#upvote'
    post 'downvote', to: 'tracks#downvote'
  end

  resources :genres, only: [:show]
  # !!!!!! add update and destroy for admin only

  namespace :user do
    get 'dashboard', to: 'dashboards#show'
    resources :tracks, only: :index
  end

  namespace :admin do
    get 'dashboard', to: 'dashboards#show'
    resources :opinions, only: [:index, :update, :destroy]
    resources :tracks, only: [:index, :update, :destroy]
    resources :genres, only: [:index, :create, :update, :destroy]
    resources :users, only: [:index, :update]
  end
end
