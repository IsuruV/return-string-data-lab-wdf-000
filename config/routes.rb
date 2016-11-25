Rails.application.routes.draw do
  get 'home', to: 'static#home'
  get 'products/:id/inventory' => "products#inventory"
  get 'products/:id/description' => "products#description"

  resources :orders
  resources :invoices
  resources :products
end
