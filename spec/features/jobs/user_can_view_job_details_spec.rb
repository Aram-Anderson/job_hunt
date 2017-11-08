require 'rails_helper'

feature "As a logged in user" do
  context "I visit '/dashboard' and click 'details' on a job" do
    scenario "I see the details for that job and keywords from analysis of the description" do
        VCR.use_cassette('job analysis') do
          user = create(:user)
          job = create(:job, user: user, company: "Workiva")
          contact = create(:contact, job: job)
          allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

          visit dashboard_index_path
          click_on "Details"

          expect(page).to have_content(contact.name)
          expect(page).to have_content(contact.phone)
          expect(page).to have_content(contact.email)
          expect(page).to have_content(job.description)
          expect(page).to have_content("scalable distributed systems, relevance 0.98")
          expect(page).to have_content("agile development team, relevance 0.96")
          expect(page).to have_content("complex web applications, relevance 0.93")
          expect(page).to have_content("equivalent job experience, relevance 0.97")
          expect(page).to have_content("Google Cloud Platform, relevance 0.92")
          expect(page).to have_content("Excellent problem-solving skills, relevance 0.92")
          expect(page).to have_content("latest web technologies, relevance 0.92")
      end
    end
  end
end
