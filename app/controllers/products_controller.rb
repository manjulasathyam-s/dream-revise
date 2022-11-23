class ProductController < ActionController
	def get_products
		@data=ProductInformation::ProductService.get_products
	end

	def new_product
		@data=ProductInformation::ProductService.new_product
	end
	
	def edit_product
		@data=ProductInformation::ProductService.edit_product(product_id)
	end

	def update_product
		@data=ProductInformation::ProductService.update_product(product_id,params)
	end

	def create_product
		@data=ProductInformation::ProductService.create_product(params)
	end

	def delete_product
		@data=ProductInformation::ProductService.delete_product(product_id)
	end

	def params
		Product.params.()
	end
end