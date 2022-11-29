module ProductInformation
	class ReturnService

		def self.update_return(return_id, params)
			data = Return.find(return_id)
			if data.update
				return true
			else
				return false
			end
		end

		def self.create_return(params)
			data = Return.create(params)
		end
	end
end