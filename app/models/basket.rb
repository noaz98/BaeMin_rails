class Basket < ApplicationRecord
	has_one :order
	has_one :customer
	has_one :user
end
