class Review < ApplicationRecord
	belongs_to :customer
	belongs_to :store
	belongs_to :menu
end
