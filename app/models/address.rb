class Address < ApplicationRecord
	# belongs_to :customer
	belongs_to :user, foreign_key: "user_id"
end
