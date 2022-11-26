class StatesController < ApplicationController
	def get_state
		@data=ProductInformation::StateService.get_state
		render :json =>  @data
	end

	def new_state
		@data=ProductInformation::StateService.new_state
	end
	
	def edit_state
		@data=ProductInformation::StateService.edit_state(state_id)
	end

	def update_state
		@data=ProductInformation::StateService.update_state(state_id,params)
	end

	def create_state
		@data = ProductInformation::StateService.create_state(params)
		if @data.save
			puts "Saved"
		end
	end

	def delete_state
		@data=ProductInformation::StateService.delete_state(state_id)
	end

	private
	
	def params
		params.permit(:name, :country_id)
	end
end
