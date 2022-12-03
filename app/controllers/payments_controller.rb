class PaymentsController < ApplicationController
	def payment_index
		@data=ProductInformation::PaymentService.get_payment
	end

	def new_payment
		@data=ProductInformation::PaymentService.new_payment
	end
	
	def edit_payment
		@data=ProductInformation::PaymentService.edit_payment(payment_id)
	end

	def update_payment
		@data=ProductInformation::PaymentService.update_payment(payment_id,params)
	end

	def create_payment
		@data = ProductInformation::PaymentService.create_payment(params)
		if @data.save
			puts "Saved"
		end
	end

	def delete_payment
		@data=ProductInformation::PaymentService.delete_payment(payment_id)
	end

	private
	
	def params
		params.permit(:payment_customer_id, :payment_gateway_id, :payment_desc, :payment_amount, :date)
	end
end
