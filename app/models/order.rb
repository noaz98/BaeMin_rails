class Order < ApplicationRecord
	belongs_to :store
	belongs_to :menu
	
	has_one :user_order
	has_one :customer
	has_one :basket
end
