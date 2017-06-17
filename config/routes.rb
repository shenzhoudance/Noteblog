Rails.application.routes.draw do
  namespace :skills do
    get 'front_end/work_1'
  end

  devise_for :users
  resources :posts
  resources :btc

  # namespace :skills do
  #   resources :front_end
  # end

  # get '/work_1', to: 'front_end#work_1'

  root 'posts#index'
end
