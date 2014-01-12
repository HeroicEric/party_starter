class EventsController < ApplicationController
	def index
		@events = Event.all
	end

	def new
		@event = Event.new
	end

	def create
		@event = Event.new(event_params)
		@event.save
		if @event.save
			redirect_to event_path(@event), notice: 'Event was successfully added.'
		else
			redirect_to new_event_path, notice:"Something went wrong!"
		end
	end

	def show
		@event = Event.find(params[:id])
		@rsvp = Rsvp.new
	end

	private
    def set_event
      @event = Event.find(params[:id])
    end

    def event_params
      params.require(:event).permit(:title,:location_id,:theme,:when,:rsvp_min,:rsvp_max)
    end
end

