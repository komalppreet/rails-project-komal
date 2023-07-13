Rails.application.routes.draw do
  resources :orders
  resources :reviews
  resources :genres
  resources :authors
  resources :books
  resources :categories
  resources :items
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
   root'books#index'

   get 'about', to: 'about#index'
   get '/categories', to: 'categories#show', as: 'custom_categories_path'
  # root "articles#index"
end
