require 'rails_helper'

feature "As a logged in user" do
  context "I can add a new job" do
    scenario "when I visit '/jobs/new'" do
      user = create(:user)
      create(:status)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
      visit '/jobs/new'

      fill_in "job[company]", with: "Company1"
      fill_in "job[title]", with: "Job Title"
      fill_in "job[description]", with: "Do things at the place."
      fill_in "job[city]", with: "Denver"
      fill_in "job[state]", with: "CO"
      fill_in "job[post_url]", with: "job.com"
      fill_in "job[salary]", with: "50000"
      select("interested", from: "job[status_id]").select_option

      click_on "Add Job"

      expect(current_path).to eq('/dashboard')
      expect(page).to have_content('Company1')
      expect(page).to have_content('Job Title')
      expect(page).to have_content('Denver')

    end
  end
end
