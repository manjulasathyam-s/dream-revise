class DistrictsController < ApplicationController
	def get_district
		@data=ProductInformation::DistrictService.get_district
		render :json =>  @data
	end

	def new_district
		@data=ProductInformation::DistrictService.new_district
	end
	
	def edit_district
		@data=ProductInformation::DistrictService.edit_district(district_id)
	end

	def update_district
		@data=ProductInformation::DistrictService.update_district(district_id,params)
	end

	def create_district
		@data = ProductInformation::DistrictService.create_district(params)
		if @data.save
			puts "Saved"
		end
	end

	def delete_district
		@data=ProductInformation::DistrictService.delete_district(district_id)
	end

	private
	
	def params
		params.permit(:name, :state_id)
	end
end
