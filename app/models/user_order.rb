class UserOrder < ApplicationRecord
	belongs_to :customer
	belongs_to :user
	has_one :order
end
