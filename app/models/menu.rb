class Menu < ApplicationRecord
	belongs_to :store
	
	has_many :orders, dependent: :destroy
	has_many :reviews, dependent: :destroy
end
