class CartLogsController < ApplicationController
	def get_cart_logs
		@data=ProductInformation::CartLogService.get_cart_logs
		render :json =>  @data
	end

	def new_cart_logs
		@data=ProductInformation::CartLogService.new_cart_logs
	end
	
	def edit_cart_logs
		@data=ProductInformation::CartLogService.edit_cart_logs(cart_log_id)
	end

	def update_cart_logs
		@data=ProductInformation::CartLogService.update_cart_logs(cart_log_id,params)
	end

	def create_cart_logs
		@data = ProductInformation::CartLogService.create_cart_logs(params)
		if @data.save
			puts "Saved"
		end
	end

	def delete_cart_logs
		@data=ProductInformation::CartLogService.delete_cart_logs(cart_log_id)
	end

	private
	
	def params
		params.permit(:first_name, :last_name, :email, :password, :phone_number, :file_extension, :language)
	end
end
