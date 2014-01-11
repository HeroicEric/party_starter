require 'spec_helper'

feature 'users can create locations from event form', %Q{
  As a user
  I want to add a new location from the event form
  So that I can add it to my event
} do

  # *Acceptance Criteria:
  # *user can link to location form via event form
  # *user can create location
  # *if location has incorrect information
  # *it raises an error

  scenario 'user links to location form and creates location' do
  	visit new_event_path
  	click_link("Add new location")
  	fill_in "Name", with: "Mission Control"
  	fill_in "Street Address", with: "33 Harrison St"
  	fill_in "City", with: "Boston"
  	fill_in "State", with: "MA"
  	fill_in "Zip Code", with: "02108"
  	click_button("Submit")
  	expect(page).to have_content('Location was successfully added.')
  end
  
  scenario 'user inputs invalid location info' do
  	visit new_location_path
  	click_button("Submit")
  	expect(page).to have_content("can't be blank")
  end
end
