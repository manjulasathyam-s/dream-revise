class Delivery < ApplicationRecord
	has_one :delivery_logs
	belongs_to :delivery_partner
	has_many :delivery_statuses
	has_one :cancellation
	belongs_to :user
	belongs_to :order
end
