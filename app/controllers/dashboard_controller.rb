class DashboardController < ApplicationController
before_action :set_store

	def today_trails
		@trails_for_today = @store.orders.where("trail_date = '#{Time.now.to_date}'").where("trail_status = 'Not Done'")
		@trails_delayed = @store.orders.where("trail_date < '#{Time.now.to_date}'").where("trail_status = 'Not Done'")
		@trails_upcoming = @store.orders.where("trail_date > '#{Time.now.to_date}'").where("trail_status = 'Not Done'")
	end

	def today_deliveries
		@deliveries_for_today = @store.orders.where("delivery_date = '#{Time.now.to_date}'").where("delivery_status = 'Not Done'")
		@deliveries_delayed = @store.orders.where("delivery_date < '#{Time.now.to_date}'").where("delivery_status = 'Not Done'")
		@deliveries_upcoming = @store.orders.where("delivery_date > '#{Time.now.to_date}'").where("delivery_status = 'Not Done'")
	end

	def search_customer

		@customer = @searched_customer = @store.customers.where("contact_number = '#{params['search_customer']}'").first
		@orders = @customer.orders
		
	end

	def search_order
		
	    ord = params['search_order'].to_i 

		@order = @searched_order = @store.orders.find_by id: ord

		if @order == nil then 
			redirect_to dashboard_today_trails_path, notice: " NO Order found " 
		else
			@customer = @store.customers.find_by id: @order.customer_id
		end
		
	end

	def set_store
       @store =  logged_in_store
    end

end