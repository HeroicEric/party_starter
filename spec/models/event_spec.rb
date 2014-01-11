require 'spec_helper'

describe Event do
	let(:blank_values) { [nil,''] }
  it { should have_valid(:title).when('Bad Christmas Party, open bar') }
  it { should_not have_valid(:title).when(*blank_values) }
  it { should have_valid(:location).when('Mission Control') }
  it { should_not have_valid(:location).when(*blank_values) }
  it { should have_valid(:theme).when('EIGHTIES') }
  it { should_not have_valid(:theme).when(*blank_values) }
  it { should have_valid(:when).when(Time.now + (60 * 60 * 24) ) }
  it { should have_valid(:rsvp_min).when(20) }
  it { should have_many(:hostings) }
  it { should have_many(:rsvps) }
end
