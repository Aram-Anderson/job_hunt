require 'rails_helper'

RSpec.describe Contact, type: :model do
  it "has attributes" do
    contact = create(:contact)

    expect(contact).to respond_to(:name)
    expect(contact).to respond_to(:phone)
    expect(contact).to respond_to(:email)
    expect(contact).to respond_to(:image_url)
  end
  it { should belong_to(:job) }
  it { should validate_presence_of(:name) }
end
