class Product < ApplicationRecord
	# has_many :discounts, through: :product_discounts
	 # belongs_to :product_stock
	belongs_to :category
	# has_many :product_feedbacks
	# belongs_to :cart
end
