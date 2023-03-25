Rails.application.routes.draw do
  root to: 'home#top'
  get "/home/about" =>"home#about"
  devise_for :users
  resources :users, only: [:index, :show, :edit, :update]
  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]
end
