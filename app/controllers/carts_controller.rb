class CartsController < ApplicationController

	skip_before_action :verify_authenticity_token

	def cart_index
		
		@data=ProductInformation::CartService.get_cart
		
	end

	def new_cart
		@data=ProductInformation::CartService.new_cart
	end
	
	def edit_cart
		@data=ProductInformation::CartService.edit_cart(cart_id)
	end

	def update_cart
		@data=ProductInformation::CartService.update_cart(cart_id, cart_params)
	end

	def create_cart
		@data = ProductInformation::CartService.create_cart(cart_params)
		if @data.save
			puts "Saved"
		end
	end

	def delete_cart
		@data=ProductInformation::CartService.delete_cart(cart_id)
	end

	private
	
	def cart_params
		params.permit(:product_id, :total_items, :sub_total, :total_unique_items, :available_discounts, :currency, :user_id)
	end
end
