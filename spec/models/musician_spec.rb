require 'spec_helper'

describe Musician do

	it { should have_valid(:name).when('John Smith') }
	it { should_not have_valid(:name).when(nil, '') }

	it { should have_valid(:email).when('user@example') }
	it { should_not have_valid(:email).when(nil, '') }

	it { should have_valid(:genre).when('Classical') }
	it { should_not have_valid(:genre).when(nil, '') }

	it { should have_valid(:location).when('Boston, MA') }
	it { should_not have_valid(:location).when(nil, '') }

end
