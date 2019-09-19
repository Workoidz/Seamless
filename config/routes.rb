Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

resources :stores do
	resources :customers do
		resources :customer_measurements
		
		resources :orders do
			resources :order_measurements
			resources :shirt_styles
			resources :trouser_styles
		
		end
	
	end

	resources :employees

end

resources :sessions , only: [:new,:create,:destroy]

get "/login" => "sessions#new", as: "login"
get "/logout" => "sessions#destroy", as: "logout"

root to: 'sessions#new'

end
