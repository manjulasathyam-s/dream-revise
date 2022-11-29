class Product < ApplicationRecord
	has_many :product_discounts
	has_many :discounts, through: :product_discounts
	has_many :product_carts
  	has_many :products, :through => :product_carts
	belongs_to :product_stock
	belongs_to :category
	has_many :product_feedbacks
end
