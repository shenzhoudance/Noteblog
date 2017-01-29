Rails.application.routes.draw do
  devise_for :users

  resources :blogs
  resources :posts
  root 'welcome#index'
end
