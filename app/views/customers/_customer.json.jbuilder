json.extract! customer, :id, :customer_name, :contact_number, :email, :address, :date_of_birth, :date_of_anniversary, :picture, :sales_person, :store_id, :created_at, :updated_at
json.url customer_url(customer, format: :json)
