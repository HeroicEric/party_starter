class RsvpsController < ApplicationController
	def new
		@event = Event.find(params[:event_id])
		@rsvp = Rsvp.new
	end
	def create
		@event = Event.find(params[:event_id])
		@rsvp = Rsvp.new(event_id: @event.id)
		binding.pry
		if @rsvp.save
			redirect_to event_path(@event),notice:"You have successfully rsvp'ed for this event!"
		else
			redirect_to event_path(@event),notice:"Something went wrong!"
		end

	end

	protected

end
# find all button elements
# add click
# do ajax request to event RsvpsController
# pass 