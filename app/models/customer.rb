class Customer < ApplicationRecord
	has_many :user_orders, dependent: :destroy
	has_many :addresses, dependent: :destroy
	has_many :dibs, dependent: :destroy
	has_many :reviews, dependent: :destroy
	
	has_one :order
	has_one :basket
end
