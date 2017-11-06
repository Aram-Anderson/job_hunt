require 'rails_helper'

feature "As a logged in user" do
  context "I can click a job on the dashboard page" do
    scenario "and I can see details about the company from Glassdoor" do
      VCR.use_cassette("glassdoor company details") do
        user = create(:user)
        create(:job, company: "Workiva", user: user)
        allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
        visit dashboard_index_path
        click_on("Workiva")

        expect(page).to have_content("Overall Company Rating")
        expect(page).to have_content("3.6 out of 5 with 198 total ratings")
        expect(page).to have_content("4.0 out of 5")
        expect(page).to have_content("3.4 out of 5")
        expect(page).to have_content("3.4 out of 5")
        expect(page).to have_content("3.2 out of 5")
        expect(page).to have_content("4.0 out of 5")
        expect(page).to have_content("I've worked for several companies since Workiva and Workiva was more pro than con. I genuinely thought about going back several times. Healthcare, benefits, people are all really good. This company has good morals")

      end
    end
  end
end
