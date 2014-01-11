class LocationsController < ApplicationController
	def new
		@location = Location.new
	end
	def create
		@location = Location.new(location_params)
		if @location.save
			redirect_to new_event_path, notice: 'Location was successfully added.'
		else
			redirect_to new_location_path, notice:"Something went wrong!"
		end
	end
end
