Rails.application.routes.draw do


  resources :target_audience, only: [:index]

  resources :products, only: [:index, :show]
  resources :brands, only: [:index, :show]

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
