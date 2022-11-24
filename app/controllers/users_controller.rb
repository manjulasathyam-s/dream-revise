class UsersController < ApplicationController
	def get_user
		@data=ProductInformation::UserService.get_user
		render :json =>  @data
	end

	def new_user
		@data=ProductInformation::UserService.new_user
	end
	
	def edit_user
		@data=ProductInformation::UserService.edit_user(user_id)
	end

	def update_user
		@data=ProductInformation::UserService.update_user(user_id,params)
	end

	def create_user
		byebug
		@data = ProductInformation::UserService.create_user(params)
		if @data.save
			puts "Saved"
		end
	end

	def delete_user
		@data=ProductInformation::UserService.delete_user(user_id)
	end

	private
	
	def params
		params.permit(:first_name, :last_name, :email, :password, :phone_number, :file_extension, :language)
	end
end
