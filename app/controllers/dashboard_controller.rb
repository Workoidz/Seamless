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


	def set_store
       @store =  logged_in_store
    end

end