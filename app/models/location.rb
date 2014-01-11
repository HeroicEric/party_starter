class Location < ActiveRecord::Base
	validates_presence_of :name, :street_address, :city, :state, :zip_code
	has_many :events
end
