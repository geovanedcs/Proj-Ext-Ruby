Rails.application.routes.draw do
  resources :notepads
  resources :carts do
    resources :products
  end
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "notepads#index"
end
