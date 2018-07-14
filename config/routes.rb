Rails.application.routes.draw do
  root to: 'post#index'
  resources :histories
  resources :excerpts
  resources :comments
  resources :categories
  resources :posts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
