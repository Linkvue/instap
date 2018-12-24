Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :histories
  resources :excerpts
  resources :comments
  resources :categories
  resources :posts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :home do
    get 'about'
    get 'index'
  end

  mount API::Root => '/api'
  mount GrapeSwaggerRails::Engine => '/api_doc'
  

end
