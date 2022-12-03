class AddressController < ApplicationController
	def get_address
		@data=ProductInformation::AddressService.get_address
		render :json =>  @data
	end

	def new_address
		@data=ProductInformation::AddressService.new_address
	end
	
	def edit_address
		@data=ProductInformation::AddressService.edit_address(address_id)
	end

	def update_address
		@data=ProductInformation::AddressService.update_address(address_id,params)
	end

	def create_address
		@data = ProductInformation::AddressService.create_address(params)
		if @data.save
			puts "Saved"
		end
	end

	def delete_address
		@data=ProductInformation::AddressService.delete_address(address_id)
	end

	private
	
	def params
		params.permit(:flat_no, :house_name, :street_name, :city_village_id, :district_id, :state_id, :country_id, :pincode)
	end
end
