class RsvpsController < ApplicationController
	def new
		@rsvp = Rsvp.new
		if @rsvp.save
			redirect_to event_path(@event),notice:"You have successfully rsvp'ed for this event!"
		else
			redirect_to event_path(@event),notice:"Something went wrong!"
		end
	end
end
