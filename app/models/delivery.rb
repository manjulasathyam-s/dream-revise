class Delivery < ApplicationRecord
	has_one :delivery_log
	belongs_to :delivery_partner
	has_many :delivery_statuses
	has_one :cancellation
	belongs_to :user
	belongs_to :order
	has_one :return
end
