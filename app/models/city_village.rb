class CityVillage < ApplicationRecord
	has_many :addresses
	belongs_to :district
end
