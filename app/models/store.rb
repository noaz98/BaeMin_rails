class Store < ApplicationRecord
	belongs_to :ceo
	
	has_many :orders, dependent: :destroy
	has_many :dibs, dependent: :destroy
	has_many :menus, dependent: :destroy
	has_many :reviews, dependent: :destroy
end
