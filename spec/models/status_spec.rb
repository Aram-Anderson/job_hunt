require 'rails_helper'

RSpec.describe Status, type: :model do
  it "has attributes" do
    status = create(:status)

    expect(status).to respond_to(:name)
  end
  it { should have_many(:jobs) }
end
