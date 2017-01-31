Rails.application.routes.draw do
  devise_for :users
  resources :welcome
  resources :posts
  root 'posts#index'
end
