class UserAddressController < ApplicationController
	def get_user_address
		@data=ProductInformation::UserAddress.get_user_address
		render :json =>  @data
	end

	def new_user_address
		@data=ProductInformation::UserAddress.new_user_address
	end
	
	def edit_user_address
		@data=ProductInformation::UserAddress.edit_user_address(user_address_id)
	end

	def update_user_address
		@data=ProductInformation::UserAddress.update_user_address(user_address_id, user_address_params)
	end

	def create_user_address
		@data = ProductInformation::UserAddress.create_user_address(user_address_params)
		if @data.save
			puts "Saved"
		end
	end

	def delete_user_address
		@data=ProductInformation::UserAddress.delete_user_address(user_address_id)
	end

	private
	
	def user_address_params
		params.permit(:user_id, :address_id)
	end
end
