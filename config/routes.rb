Rails.application.routes.draw do
  devise_for :users
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
	
	get '/mypage' ,to: 'customers#index'
	get '/dibs', to: 'dibs#index'
	get '/review', to: 'reviews#index'
	get '/chicken', to: 'stores#index'
	
	get '/user_order', to: 'user_orders#index'
	get '/store', to: 'menus#index'
	get '/basket', to: 'baskets#index'
	get '/order', to: 'orders#index'
end
