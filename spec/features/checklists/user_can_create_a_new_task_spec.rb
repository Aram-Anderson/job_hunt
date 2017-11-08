require 'rails_helper'

feature "As a logged in user" do
  context "I can add a cheklist task" do
    scenario "when I visit '/checklist/new'" do
      VCR.use_cassette('contact edit') do
        user = create(:user)
        job = create(:job, user: user, company: "Workiva")
        allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
        visit "/jobs/#{job.id}"

        click_on "Add Task"

        expect(current_path).to eq("/jobs/#{job.id}/checklists/new")

        fill_in "checklist[task]", with: "Write a cover letter"

        click_on "Add Task"

        expect(current_path).to eq("/jobs/#{job.id}")
        expect(page).to have_content("Write a cover letter")
      end
    end
  end
end
