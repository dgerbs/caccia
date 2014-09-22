require 'rails_helper'

describe User do

	it { should have_valid(:email).when('user@example.com') }
	it { should_not have_valid(:email).when(nil, '') }

	it { should have_valid(:password).when('abcde12345!@#$%') }
	it { should_not have_valid(:password).when(nil, '') }

	it { should have_valid(:board).when('Board name') }
	it { should_not have_valid(:board).when(nil, '') }

end
