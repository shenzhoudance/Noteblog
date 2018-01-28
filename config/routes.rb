Rails.application.routes.draw do
  namespace :skills do
    get 'front_end/work_1'
    get 'js_practice/work'
    get 'js_practice/work_1'
    get 'js_practice/work_2'
    get 'js_practice/work_3'
    get 'js_practice/work_4'
    get 'js_practice/work_5'
  end

  devise_for :users
  resources :design_works
  resources :posts
  resources :btc
  resources :programme_demos
  root 'welcome#index'
end
