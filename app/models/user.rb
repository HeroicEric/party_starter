class User < ActiveRecord::Base
	validates_presence_of :name
	has_many :rsvps
	has_many :hostings
	has_many :events, through: :rsvps
	has_many :events, through: :hostings

end
