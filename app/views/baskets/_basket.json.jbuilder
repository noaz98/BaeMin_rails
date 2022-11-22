json.extract! basket, :id, :count, :menu_price, :created_at, :updated_at
json.url basket_url(basket, format: :json)
