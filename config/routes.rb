Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources :btc
  root 'posts#index'
end
