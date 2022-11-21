class Discount < ApplicationRecord
	has_many :products through: :product_discounts
end
