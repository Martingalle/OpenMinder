Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :opinions, only: [:index, :show, :create, :update, :destroy] do
    resources :tracks, only: [:index, :create, :update, :destroy]
  end

  resources :tracks, only: [:show]

  resources :votes, only: [:create, :destroy]

  resources :genres, only: [:show, :create, :update, :destroy]

  namespace :user do
    get 'dashboard', to: 'dashboards#show'
    resources :tracks, only: [:index]
  end

  namespace :api do
    get 'search', to: 'searches#show'
  end

  namespace :admin do
    get 'dashboard', to: 'dashboards#show'
    resources :opinions, only: [:index, :update, :destroy]
    resources :tracks, only: [:index, :update, :destroy]
    resources :genres, only: [:index, :create, :update, :destroy]
    resources :users, only: [:index, :update]
  end
end
