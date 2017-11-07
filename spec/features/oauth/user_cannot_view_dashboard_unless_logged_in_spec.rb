require 'rails_helper'

feature "As a visitor" do
  context "not logged in" do
    scenario "I should not be able to navigate to '/dashboard'" do
      visit '/dashboard'


      expect(current_path).to eq('/login')
      expect(page).to have_content("You Must Log in to View this Page")
    end
  end
end
