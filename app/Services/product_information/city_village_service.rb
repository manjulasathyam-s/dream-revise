module ProductInformation
	class CityVillageService

		def self.get_city_village
			data = CityVillage.all
		end

		def self.new_city_village
			data = CityVillage.new 
		end

		def self.edit_city_village(city_village_id)
			data = CityVillage.find(city_village_id)
		end

		def self.update_city_village(city_village_id, params)
			data = CityVillage.find(city_village_id)
			if data.update
				return true
			else
				return false
			end
		end

		def self.create_city_village(params)
			data = CityVillage.create(params)
		end

		def self.delete_city_village(city_village_id)
			data = CityVillage.find(city_village_id)
			data.update(is_active: false)
		end
	end
end