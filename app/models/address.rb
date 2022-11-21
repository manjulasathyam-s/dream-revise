class Address < ApplicationRecord
	has_many :users through: :user_addresses
	belongs_to :city_villages
	belongs_to :districts
	belongs_to :states
	belongs_to :countries
end
