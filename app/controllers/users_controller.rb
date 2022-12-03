class UsersController < ApplicationController

	skip_before_action :verify_authenticity_token

	def user_index
		@data=ProductInformation::UserService.get_user
		# render :json =>  @data
		# redirect_to user_page_path
	end

	def new_user
		@data=ProductInformation::UserService.new_user
		# redirect_to new_user_path
	end
	
	# def edit_user
	# 	@data=ProductInformation::UserService.edit_user(user_id)
	# end

	def update_user
		@user_info=ProductInformation::UserService.update_user(user_id,params)
	end

	def create_user
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
