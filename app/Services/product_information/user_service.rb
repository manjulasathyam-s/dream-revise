module ProductInformation
	class UserService

		def self.get_user
			data = User.all
		end

		def self.new_user
			data = User.new 
		end

		def self.edit_user(user_id)
			data = User.find(user_id)
		end

		def self.update_user(user_id, params)
			data = User.find(user_id)
			if data.update
				return true
			else
				return false
			end
		end

		def self.create_user(params)
			byebug
			data = User.create(params)
		end

		def self.delete_user(user_id)
			data = User.find(user_id)
			data.update(is_active: false)
		end
	end
end