json.extract! store, :id, :store_name, :store_address, :food_category, :min_price, :tip, :content, :guide, :phone, :delivery_address, :operation_address, :closedDays, :dibs_count, :review_count, :rating_count, :created_at, :updated_at
json.url store_url(store, format: :json)
