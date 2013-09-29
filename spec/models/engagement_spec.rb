require 'spec_helper'

describe Engagement do

	it { should have_valid(:status).when(true) }
	it { should_not have_valid(:status).when(false) }

	it { should have_valid(:application).when(true) }
	it { should_not have_valid(:application).when(false) }

	it { should have_valid(:bid).when(1) }
	it { should_not have_valid(:bid).when(nil, 0) }

end