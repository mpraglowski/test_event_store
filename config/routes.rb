Rails.application.routes.draw do
  root to: "products#index"

  resources :orders
  resources :products
  resource :order_products, only: [:create, :destroy]
end
