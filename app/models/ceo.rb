class Ceo < ApplicationRecord
	has_many :stores, dependent: :destroy
end
