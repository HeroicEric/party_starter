require 'spec_helper'

feature 'guests can view parties on homepage', %Q{
  As a user
  I want to view a list of parties
  So that I can plan my social calendar
} do

  # *Acceptance Criteria:
  # *homepage lists parties
  # *Users can rsvp for parties from homepage
  # *Users can view individual parties

  scenario 'user rsvps for parties' do
    event = FactoryGirl.create(:event)
    user = FactoryGirl.create(:user)
    visit root_path
    expect(page).to have_content(event.title)
    click_button 'rsvp'
    expect(page).to have_content('successfully rsvp\'ed')
  end

  scenario 'user views party, then rsvps from show page' do
    event = FactoryGirl.create(:event)
    visit event_path(event)
    expect(page).to have_content(event.title)
    expect(page).to have_content(event.location.name)
    expect(page).to have_content(event.when)
    expect(page).to have_content(event.rsvp_min)
    click_button 'rsvp'
    expect(page).to have_content('successfully rsvp\'ed')
  end
end
