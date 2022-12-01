class Dib < ApplicationRecord
	belongs_to :store
	belongs_to :customer
	belongs_to :user
end
