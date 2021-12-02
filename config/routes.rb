Rails.application.routes.draw do
  
  get 'users/show'
  get 'cards/show'
  resources :products
  devise_for :users
  resources :shops, only:[:index, :show]
  resources :order_items
  resources :cards, only:[:show]
  resources :charges



  root 'shops#index'
end
