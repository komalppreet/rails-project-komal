Rails.application.routes.draw do
  resources :orders
  resources :reviews
  resources :genres
  resources :authors
  resources :books
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html



  # root "articles#index"
end
