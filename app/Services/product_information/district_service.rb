module ProductInformation
	class DistrictService

		def self.get_district
			data = District.all
		end

		def self.new_district
			data = District.new 
		end

		def self.edit_district(district_id)
			data = District.find(district_id)
		end

		def self.update_district(district_id, params)
			data = District.find(district_id)
			if data.update
				return true
			else
				return false
			end
		end

		def self.create_district(params)
			data = District.create(params)
		end

		def self.delete_district(district_id)
			data = District.find(district_id)
			data.update(is_active: false)
		end
	end
end