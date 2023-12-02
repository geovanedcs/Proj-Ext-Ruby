Rails.application.routes.draw do
  resources :notepads do
    resources :carts do
      member do
        put :shop
      end
      resources :products
    end
  end
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "notepads#index"
end
