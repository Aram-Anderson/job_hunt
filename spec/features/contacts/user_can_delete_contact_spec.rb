require 'rails_helper'

feature "As a logged in user" do
  context "I can add a edit a contact" do
    scenario "when I visit '/contact/:id/edit'" do
      VCR.use_cassette('contact edit') do
        user = create(:user)
        job = create(:job, user: user, company: "Workiva")
        contact = create(:contact, job: job)
        allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
        visit "/jobs/#{job.id}"

        expect(page).to have_content(contact.name)
        expect(page).to have_content(contact.phone)
        expect(page).to have_content(contact.email)

        click_on "delete contact"

        expect(page).to_not have_content(contact.phone)
        expect(page).to_not have_content(contact.email)
        expect(page).to have_content("#{contact.name} successfully deleted")

        expect(current_path).to eq("/jobs/#{job.id}")
      end
    end
  end
end
