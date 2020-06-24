Rails.application.routes.draw do
  devise_for :users
  root 'home#top'
  get 'home/about'
  resources :books do
  	  resources :comments, only: [:create, :destroy]
  	  resource :favorites, only: [:create, :destroy]
  end
  resources :users,only: [:show,:index,:edit,:update]
  resources :relationships, only: [:create, :destroy]

end