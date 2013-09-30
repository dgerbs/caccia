require 'spec_helper'

feature 'user registers or signs in', %Q{
	As a user
	I want to register and sign in
	So that I can access the application.
} do
	
# 	Acceptance Criteria:
# • Enter my email
# • Enter my password
# • Authenticate my sign in
# • If valid information isn't entered, I get an error message to correct my information.

	context 'as a guest' do
		scenario 'register for an account' do
			visit new_user_registration_path

			fill_in 'Email', with: 'foo@example.com'
			fill_in 'Password', with: '12345678'
			fill_in 'Password confirmation', with: '12345678'

			click_button 'Sign up'

			expect(page).to have_content('You have signed up successfully')

			expect(User.count).to eql(1)
			expect(User.first.email).to eql('foo@example.com')
		end
	end

	pending 'sign in a user' do

	end
end