require 'spec_helper'

feature 'users can make events', %Q{
  As a user
  I want to make a new event
  So that others can rsvp
} do

  # *Acceptance Criteria:
  # *user can make events
  # *user must specify required information or...
  # *it raises an error

  scenario 'user creates a party with valid info' do
  	location = FactoryGirl.create(:location)
  	visit root_path
  	click_link 'Start a Party'
  	fill_in'Title', with: 'Eighties Night at Launch Academy'
  	select location.name, from: 'Location'
  	fill_in'Theme', with: 'Neon leg warmers'
  	fill_in'Min RSVPs', with:'10'
  	click_button 'Create Event'
  	expect(page).to have_content('Event was successfully added.')
  end
  scenario 'user enters invalid information' do
  	visit root_path
  	click_link 'Start a Party'
  	click_button 'Create Event'
  	expect(page).to have_content("Something went wrong!")
  end
end