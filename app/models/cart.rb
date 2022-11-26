class Cart < ApplicationRecord
	# has_many :products
	has_one :cart_log
	belongs_to :user
	has_one :order
end
