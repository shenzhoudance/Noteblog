Rails.application.routes.draw do
  devise_for :users

  resources :blogs
  resources :posts
  root 'blogs#index'
end
