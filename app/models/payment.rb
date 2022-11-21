class Payment < ApplicationRecord
	has_many :payment_gateways
	belongs_to :order
end
