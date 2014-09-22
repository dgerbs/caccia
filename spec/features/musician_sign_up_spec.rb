require 'rails_helper'

feature 'Musician signs up', %Q{
	As a rock-star musician
	I want to access a social network
	So that I can post my awesome work and get hired.
} do

# 	Acceptance Criteria:
# • Sign up to be an authenticated musician
# • musician specifies email
# • musician chooses password
# • Upload a picture

	context 'as a musician' do
    scenario 'register for an account' do
      visit new_user_registration_path

      fill_in 'Name', with: 'John Smith'
      fill_in 'Email', with: 'foo@example.com'
      fill_in 'Password', with: '12345678'
      fill_in 'Password confirmation', with: '12345678'

      click_button 'Sign up'

      expect(page).to have_content('You have signed up successfully')
      expect(User.count).to eql(1)
      expect(User.first.email).to eql('foo@example.com')
    end
  end

  context 'as a registered musician' do
  
    let(:musician) { FactoryGirl.create(:musician) }

    scenario 'sign into my account' do
      visit new_user_session_path

      fill_in 'Email', with: musician.email
      fill_in 'Password', with: musician.password
      click_button 'Sign in'

      expect(page).to have_content('Signed in successfully')
    end
  end
end
