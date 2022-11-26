module ProductInformation
	class StateService

		def self.get_state
			data = State.all
		end

		def self.new_state
			data = State.new 
		end

		def self.edit_state(state_id)
			data = State.find(state_id)
		end

		def self.update_state(state_id, params)
			data = State.find(state_id)
			if data.update
				return true
			else
				return false
			end
		end

		def self.create_state(params)
			data = State.create(params)
		end

		def self.delete_state(state_id)
			data = State.find(state_id)
			data.update(is_active: false)
		end
	end
end