# frozen_string_literal: true

Rails.application.routes.draw do
  resources :shopping_carts, only: %i[show create] do
    get 'thanks', to: 'payments#thanks'

    resources :payments, only: %i[new create thanks] do
    end
  end

  resources :products, only: %i[index show] do
    post 'add_item', to: 'shopping_carts#add_item'
  end
  post '/shopping_carts/:shopping_cart_id/payments/new', to: 'payments#create'
  get 'women', to: 'target_audiences#women'
  get 'men', to: 'target_audiences#men'
  get 'kids', to: 'target_audiences#kids'
  resources :brands, only: %i[index show]

  resources :shopping_carts, only: %i[show create]
  patch 'quantity', to: 'shopping_carts#quantity'

  resources :shopping_cart_items, only: [:destroy]

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
