require 'rails_helper'

feature "As a logged in user" do
  context "I can add a new job" do
    scenario "when I visit '/job/:id/edit'" do
      VCR.use_cassette('job analysis') do
        user = create(:user)
        job = create(:job, user: user, company: "Workiva")
        create(:status)
        allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
        visit '/dashboard'
        expect(page).to have_content("Workiva")
        expect(page).to_not have_content("MiTek Industries")

        visit "/jobs/#{job.id}/edit"

        fill_in "job[company]", with: "MiTek Industries"
        fill_in "job[title]", with: "Job Title"
        fill_in "job[city]", with: "Denver"
        fill_in "job[state]", with: "CO"
        fill_in "job[post_url]", with: "job.com"
        fill_in "job[salary]", with: "50000"

        click_on "Update Job"

        expect(current_path).to eq('/dashboard')
        expect(page).to have_content('MiTek Industries')
        expect(page).to have_content('Job Title')
        expect(page).to have_content('Denver')
        expect(page).to_not have_content('Workiva')
      end
    end
  end
end
