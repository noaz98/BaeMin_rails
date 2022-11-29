class UserOrder < ApplicationRecord
	belongs_to :customer
	
	has_one :order
end
