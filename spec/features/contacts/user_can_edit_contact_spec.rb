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
        name = contact.name

        expect(page).to have_content(name)
        click_on name

        expect(current_path).to eq("/jobs/#{job.id}/contacts/#{contact.id}/edit")

        fill_in "contact[name]", with: "Frank"
        fill_in "contact[phone]", with: "333-333-3333"
        fill_in "contact[email]", with: "test@test.com"
        fill_in "contact[image_url]", with: "thing.png"

        click_on "Update Contact"

        expect(current_path).to eq("/jobs/#{job.id}")
        expect(page).to have_content('Frank')
        expect(page).to have_content('333-333-3333')
        expect(page).to have_content('test@test.com')
        expect(page).to_not have_content('name')
      end
    end
  end
end
