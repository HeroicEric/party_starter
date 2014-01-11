require 'spec_helper'

describe Hosting do
  it { should belong_to(:user) }
  it { should belong_to(:event) }
end
