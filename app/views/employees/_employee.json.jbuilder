json.extract! employee, :id, :employee_name, :mobile, :password_digest, :role, :email, :aadhar_card_no, :store_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)
