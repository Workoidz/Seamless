json.extract! order, :id, :order_date, :trail_date, :trail_status, :delivery_date, :delivery_status, :order_pictures, :trail_pictures, :remark, :stitching_cost, :fabric_cost, :stitching_advance, :fabric_advance, :balance_clear_status, :master_allocated, :customer_id, :created_at, :updated_at
json.url order_url(order, format: :json)
