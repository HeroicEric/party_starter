class Rsvp < ActiveRecord::Base
	validates_presence_of :user_id, :event_id
	belongs_to :event
	belongs_to :user

end
