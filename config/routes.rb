Rails.application.routes.draw do
  resources :order_details
  resources :orders
  resources :customers
  resources :foods
  resources :categories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/reports', to: "reports#index"
  # Defines the root path route ("/")
  # root "articles#index"
end
