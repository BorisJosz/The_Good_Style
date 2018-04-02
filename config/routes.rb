Rails.application.routes.draw do

  resources :shopping_carts, only: [:show, :create] do
      get "thanks", to: "payments#thanks"

    resources :payments, only: [:new, :create, :thanks] do
  end
  end

  resources :products, only: [:index, :show] do
    post "add_item", to: "shopping_carts#add_item"
  end
  post "/shopping_carts/:shopping_cart_id/payments/new", to: "payments#create"
  get "women", to: "target_audiences#women"
  get "men", to: "target_audiences#men"
  get "kids", to: "target_audiences#kids"
  resources :brands, only: [:index, :show]

  resources :shopping_carts, only: [:show, :create, :delete]
    patch "quantity", to: "shopping_carts#quantity"

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
