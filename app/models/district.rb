class District < ApplicationRecord
	has_many :city_villages
	has_many :addresses
	belongs_to :state
end
