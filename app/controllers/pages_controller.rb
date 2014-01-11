class PagesController < ApplicationController
	def home
		@events = Event.all
		@rsvp = Rsvp.new
	end
end
