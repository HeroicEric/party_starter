class Api::V1::EventsController < ApplicationController
  respond_to :json

  def index
    respond_with Event.limit(15)
  end

  def create
    event = Event.create(event_params)

    if event.save
      render json: event
    else
      render json: { errors: event.errors }, status: 422
    end
  end

  protected
  def event_params
    params.require(:event).permit(:title, :location, :rsvp_min, :theme, :location_id)
  end
end
