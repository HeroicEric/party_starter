class Api::V1::LocationsController < ApplicationController
  respond_to :json

  def index
    respond_with Location.limit(15)
  end

  def create
    location = Location.create(location_params)

    if location.save
      render json: location
    else
      render json: { errors: location.errors }, status: 422
    end
  end

  def update
    location = Location.find(params[:id])

    if location.update_attributes(location_params)
      render json: location
    else
      render json: { errors: location.errors }, status: 422
    end
  end

  protected
  def location_params
    params.require(:location).permit(:name, :street_address, :city, :state, :zip_code)
  end
end
