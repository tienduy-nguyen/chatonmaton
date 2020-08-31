Rails.application.routes.draw do
  get 'orders/create'
  get 'orders/destroy'
  get 'orders/update'
  get 'orders/show'
  get 'orders/index'
  resources :carts
  resources :items
  devise_for :users
  
end
