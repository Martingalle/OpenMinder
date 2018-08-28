Rails.application.routes.draw do
  get 'users/show'
  get 'users/update'
  get 'votes/create'
  get 'votes/update'
  get 'tracks/index'
  get 'tracks/create'
  get 'opinions/index'
  get 'opinions/show'
  get 'opinions/create'
  devise_for :users
  root to: 'opinions#index'

  resources :opinions, only: [:index, :show, :create] do
    resources :tracks, only: [:index, :create]
    resources :votes, only: [:create, :update]
  end
  namespace :user, only: [:show, :update] do
    resources :opinions, only: [:index]
    resources :tracks, only: [:index]
  end
  namespace :admin do
    resources :opinions, only: [:index, :update, :destroy]
    resources :tracks, only: [:index, :update, :destroy]
    resources :genres, only: [:index, :update]
    resources :users, only: [:index, :show]
  end

end
