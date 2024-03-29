class DashboardController < ApplicationController
before_action :set_store, :analytics

	def today_trails
		@trails_for_today = @store.orders.where("trail_date = '#{Time.now.to_date}'").where("trail_status = 'Not Done'")
		@trails_delayed = @store.orders.where("trail_date < '#{Time.now.to_date}'").where("trail_status = 'Not Done'").order(trail_date: :asc)
		@trails_upcoming = @store.orders.where("trail_date > '#{Time.now.to_date}'").where("trail_status = 'Not Done'").order(trail_date: :asc)
	end

	def today_deliveries
		@deliveries_for_today = @store.orders.where("delivery_date = '#{Time.now.to_date}'").where("delivery_status = 'Not Done'")
		@deliveries_delayed = @store.orders.where("delivery_date < '#{Time.now.to_date}'").where("delivery_status = 'Not Done'").order(delivery_date: :asc)
		@deliveries_upcoming = @store.orders.where("delivery_date > '#{Time.now.to_date}'").where("delivery_status = 'Not Done'").order(delivery_date: :asc)
	end

	def search_customer

		@customer = @searched_customer = @store.customers.where("contact_number = '#{params['search_customer']}'").first
		
		if @searched_customer == nil then
			redirect_to request.env["HTTP_REFERER"], notice: "No Customer Found"
		else
			@orders = @customer.orders
		end
		
	end

	def search_order
		
	    ord = params['search_order'].to_i 

		@order = @searched_order = @store.orders.find_by id: ord

		if @order == nil then 
			redirect_to request.env["HTTP_REFERER"], notice: "No Order Found"
		else
			@customer = @store.customers.find_by id: @order.customer_id
		end
		
	end

	def all

		@all = @store.orders.order(id: :desc)
		
	end

	def set_store
       @store =  logged_in_store
    end

    def analytics

    	@delivered_today = @store.orders.where("delivery_date = '#{Time.now.to_date}' AND delivery_status ='Done'").count
    	@trailed_today = @store.orders.where("trail_date = '#{Time.now.to_date}' AND trail_status ='Done'").count
  
    	
    end

end