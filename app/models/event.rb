class Event < ActiveRecord::Base
	has_many :hostings
	has_many :rsvps
	validates_presence_of :title, :location, :when, :rsvp_min, :theme
end
