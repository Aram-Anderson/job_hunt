require 'rails_helper'

feature "As a visitor" do
  context "when I visit '/login'" do
    scenario "I should be able to click 'login with linkedin' and login" do
      visit '/'
      mock_auth_hash
      click_on "Login with LinkedIn"

      expect(current_path).to eq('/dashboard')
      expect(page).to have_content("Test")
      expect(page).to have_content("Logout")

      click_on "Logout"

      expect(current_path).to eq('/')
      expect(page).to_not have_content("Logout")
    end
  end
end
