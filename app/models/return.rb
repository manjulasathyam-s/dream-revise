class Return < ApplicationRecord
	has_one :return_log
	belongs_to :user
	belongs_to :order
	belongs_to :delivery
end
