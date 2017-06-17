Rails.application.routes.draw do
  namespace :skills do
    get 'front_end/work_1'
  end

  devise_for :users
  resources :posts
  resources :btc
  resources :pins
  root 'posts#index'
end
