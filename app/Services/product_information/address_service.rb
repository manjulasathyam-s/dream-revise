module ProductInformation
	class AddressService

		def self.get_address
			data = Address.all
		end

		def self.new_address
			data = Address.new 
		end

		def self.edit_address(address_id)
			data = Address.find(address_id)
		end

		def self.update_address(address_id, params)
			data = Address.find(address_id)
			if data.update
				return true
			else
				return false
			end
		end

		def self.create_address(params)
			data = Address.create(params)
		end

		def self.delete_address(address_id)
			data = Address.find(address_id)
			data.update(is_active: false)
		end
	end
end