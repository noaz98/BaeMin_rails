json.extract! order, :id, :total_price, :requests, :payment, :created_at, :updated_at
json.url order_url(order, format: :json)
