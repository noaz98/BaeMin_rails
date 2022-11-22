json.extract! customer, :id, :login_id, :password, :phone, :email, :nickname, :current_address, :created_at, :updated_at
json.url customer_url(customer, format: :json)
