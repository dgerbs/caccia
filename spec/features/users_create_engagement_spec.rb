require 'spec/helpers'

feature 'a user or musician creates a new engagement', %Q{
  As a user or musician
  I want to create a new engagement
  So that I can schedule an engagement.
} do

#   Acceptance Criteria:
# • Enter a status as active or inactive
# • Enter an application as pending or submitted
# • Enter a bid
# • If valid information isn't entered, I get an error message to correct my information.

  context 'as a user or musician' do
    scenario 'create a new engagement' do
      visit new_engagement_path

      fill_in 'status', with: true
      fill_in 'application', with: true
      fill_in 'bid', with: '1'

      click_button 'Submit'

      expect(page).to have_content('You have setup an engagement')
      expect(Engagement.count).to eql(1)
      expect(Engagement.status).to eql(true)
      expect(Engagement.application).to eql(true)
      
      expect(Engagement.bid).to eql(1)
      expect(Engagement.bid).to eql(nil, 0)
    end
  end
end
