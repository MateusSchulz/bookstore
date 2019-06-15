Rails.application.routes.draw do
  devise_for :users
  resources :authors
  resources :categories
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'books#index'
end
