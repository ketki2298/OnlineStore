Rails.application.routes.draw do

  get 'access/new'
  get 'access/create'
  post 'access/new', to: "access#create"
  get 'access/destroy'
  get 'admin/index'
  get 'admin', to: "admin#index"
  get 'login', to: "access#new"
  get 'authenticate', to: "access#create"
  delete 'logout', to: "access#destroy"
  post 'login', to: "access#new"
  resources :users
  resources :orders
  resources :lineitems
  resources :carts
  root "shopper#index", as: "shopper"
  post "/", to: "shopper#index"
  get 'view', to: "shopper#view"
  post 'view', to: "shopper#view"
  get 'shopper/index'
  get 'search', to: "shopper#search"
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/home/page1'
  get '/home/page2'
end
