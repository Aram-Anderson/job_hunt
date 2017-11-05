require 'rails_helper'

feature "As a visitor" do
  context "when I visit '/login'" do
    scenario "I should be able to click 'login with linkedin' and login" do
      visit '/'
      mock_auth_hash
      click_on("Login with Linkedin")

      expect(current_path).to eq('/dashboard')
      expect(page).to have_content("Test")
    end
    scenario "it can handle an auth error" do
      OmniAuth.config.mock_auth[:linkedin] = :invalid_credentials
      visit '/'
      click_on("Login with Linkedin")
      expect(current_path).to eq('/auth/failure')
    end
  end
end
