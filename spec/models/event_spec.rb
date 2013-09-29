require 'spec_helper'

describe Event do
	
	it { should have_valid(:title).when('Wedding') }
	it { should_not have_valid(:title).when(nil, '') }

	it { should have_valid(:location).when('Boston, MA') }
	it { should_not have_valid(:location).when(nil, '') }

	it { should have_valid(:summary).when('This is my uber description') }
	it { should_not have_valid(:summary).when(nil, '') }

end