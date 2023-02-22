Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :comments
  resources :articles
  resources :books
  resources :notes
  resources :authors

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "articles#index"
  namespace :api do
    namespace :v1 do
      resources :articles 
      resources :notes
      resources :authors
      resources :books
    end
  end
end
