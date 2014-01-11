class Event < ActiveRecord::Base
	has_many :hostings
	has_many :rsvps
	belongs_to :location
	validates_presence_of :title, :location, :when, :rsvp_min, :theme
end

