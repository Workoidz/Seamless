Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

resources :stores do
	resources :customers do
		resources :customer_measurements
		
		resources :orders do
			resources :order_measurements
			resources :shirt_styles
		
		end
	
	end
end

end
