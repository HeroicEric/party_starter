require 'spec_helper'

describe User do
	let(:blank_values) { [nil,''] }
  it { should have_valid(:name).when('Sir Justus the Conqueror') }
  it { should_not have_valid(:name).when(*blank_values) }
  
  it { should have_many(:hostings) }
  it { should have_many(:rsvps) }
end
