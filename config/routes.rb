Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :my_orders, only: :index

  get 'about', to: 'pages#about'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :products, only: [:index, :show, :new] do
    member do
      post :add_to_cart
      delete :remove_from_cart
    end
  end
  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end
  resources :shops, only: [:index, :show]
  resources :orders, only: [:show, :destroy]
  get '/my_orders', to: 'my_orders#my_orders'
  mount StripeEvent::Engine, at: '/stripe-webhooks'
end
