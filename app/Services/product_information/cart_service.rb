module ProductInformation
	class CartService

		def self.get_cart
			data = Cart.all
		end

		def self.new_cart
			data = Cart.new 
		end

		def self.edit_cart(cart_id)
			data = Cart.find(cart_id)
		end

		def self.update_cart(cart_id, cart_params)
			data = Cart.find(cart_id)
			if data.update
				return true
			else
				return false
			end
		end

		def self.create_cart(cart_params)
			data = Cart.create(cart_params)
		end

		def self.delete_cart(cart_id)
			byebug
			data = Cart.find(cart_id)
			data.update(is_active: false)
		end
	end
end