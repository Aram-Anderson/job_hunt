require 'rails_helper'

feature "As a visitor" do
  context "when I visit '/login'" do
    scenario "I should be able to click 'login with linkedin' and login" do
      visit '/'
      mock_auth_hash
      click_on "Login with LinkedIn"

      expect(current_path).to eq('/dashboard')
      expect(page).to have_content("Test")
    end
  end
end
