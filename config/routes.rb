Rails.application.routes.draw do
  get 'static_pages/about'
  get 'static_pages/contact'
  root to: 'items#index'
  devise_for :users

  resources :carts
  resources :orders
  resources :items

  # Account settings
  get 'account/profile', to: "users#profile"
  patch 'account/profile', to: "users#update_profile"
  get 'account/secret', to: "users#secret"



  
end
