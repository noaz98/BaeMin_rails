Rails.application.routes.draw do
  resources :homes
  resources :ceos
  resources :reviews
  resources :dibs
  resources :addresses
  resources :customers
  resources :user_orders
  resources :baskets
  resources :orders
  resources :menus
  resources :stores
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
	root 'homes#index'
	# get '/homes/index', to: 'customers#index', as: "mypage"
	get '/homes/index/:id', to: 'customers#index'
end
