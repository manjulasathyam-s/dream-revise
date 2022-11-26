class CityVillageController < ApplicationController
	def get_city_village
		@data=ProductInformation::CityVillageService.get_city_village
		render :json =>  @data
	end

	def new_city_village
		@data=ProductInformation::CityVillageService.new_city_village
	end
	
	def edit_city_village
		@data=ProductInformation::CityVillageService.edit_city_village(city_village_id)
	end

	def update_city_village
		@data=ProductInformation::CityVillageService.update_city_village(city_village_id,params)
	end

	def create_city_village
		@data = ProductInformation::CityVillageService.create_city_village(params)
		if @data.save
			puts "Saved"
		end
	end

	def delete_city_village
		@data=ProductInformation::CityVillageService.delete_city_village(city_village_id)
	end

	private
	
	def params
		params.permit(:name, :district_id)
	end
end
