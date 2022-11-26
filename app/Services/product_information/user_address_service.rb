module ProductInformation
	class UserAddressService

		def self.get_user_address
			data = UserAddress.all
		end

		def self.new_user_address
			data = UserAddress.new 
		end

		def self.edit_user_address(user_address_id)
			data = UserAddress.find(user_address_id)
		end

		def self.update_user_address(user_address_id, user_address_params)
			data = UserAddress.find(user_address_id)
			if data.update
				return true
			else
				return false
			end
		end

		def self.create_user_address(user_address_params)
			data = UserAddress.create(user_address_params)
		end

		def self.delete_user_address(user_address_id)
			data = UserAddress.find(user_address_id)
			data.update(is_active: false)
		end
	end
end