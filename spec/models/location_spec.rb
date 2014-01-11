require 'spec_helper'

describe Location do
	let(:blank_values) { [nil,''] }
  it { should have_valid(:name).when('Highball Lounge') }
  it { should_not have_valid(:name).when(*blank_values) }

  it { should have_valid(:street_address).when('33 Harrison Street') }
  it { should_not have_valid(:street_address).when(*blank_values) }

  it { should have_valid(:city).when('Boston') }
  it { should_not have_valid(:city).when(*blank_values) }

  it { should have_valid(:state).when('Massachusetts') }
  it { should_not have_valid(:state).when(*blank_values) }

  it { should have_valid(:zip_code).when('02108') }
  it { should_not have_valid(:zip_code).when(*blank_values) } 
  it { should have_many(:events) }
end
