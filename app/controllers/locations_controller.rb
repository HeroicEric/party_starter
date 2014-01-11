class LocationsController < ApplicationController
	def new
		@location = Location.new
	end
	def create
		@location = Location.new(location_params)
		@location.save
		if @location.save
			redirect_to new_event_path, notice: 'Location was successfully added.'
		else
			redirect_to new_location_path, notice:"Something went wrong!"
		end
	end

	private
    def set_location
      @location = Location.find(params[:id])
    end

    def location_params
      params.require(:location).permit(:name, :street_address,:city,:state,:zip_code,:private)
    end
end
