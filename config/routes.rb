Rails.application.routes.draw do
  
  get 'users/show'
  get 'cards/show'
  resources :products
  devise_for :users
  resources :shops, only:[:index, :show]
  resources :order_items
  resources :cards, only:[:show]
  resources :charges
  resources :users, only: [:show, :edit, :update]



  root 'shops#index'
end
