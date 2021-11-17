Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :my_orders, only: :index
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :products, only: [:index, :show, :new] do
    resources :orders, only: [:create]
  end
  resources :shops, only: [:index, :show]
  resources :orders, only: [:destroy]
  get '/my_orders', to: 'my_orders#my_orders'
end
