require 'rails_helper'

RSpec.describe User, type: :model do
  it "has attributes" do
    user = create(:user)

    expect(user).to respond_to(:first_name)
    expect(user).to respond_to(:last_name)
    expect(user).to respond_to(:name)
    expect(user).to respond_to(:email)
    expect(user).to respond_to(:image_url)
  end
  it "has instance methods" do
    user = create(:user, first_name: "Bill", last_name: "Smith")
    expect(user.name).to eq("Bill Smith")
  end
  it { should have_many(:jobs) }
end
