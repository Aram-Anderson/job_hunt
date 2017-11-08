require 'rails_helper'

feature "As a logged in user" do
  context "I can delete a job" do
    scenario "when I visit '/job/:id' and click delete, the job is deleted" do
      VCR.use_cassette('job delete') do
        user = create(:user)
        job = create(:job, user: user, company: "Workiva")
        create(:status)
        allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
        visit '/dashboard'
        expect(page).to have_content("Workiva")

        visit "/jobs/#{job.id}"

        click_on "Delete Job"

        expect(current_path).to eq('/dashboard')
        expect(page).to_not have_content('Workiva')
      end
    end
  end
end
