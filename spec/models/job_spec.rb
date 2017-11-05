require 'rails_helper'

RSpec.describe Job, type: :model do
  it "has attributes" do
    job = create(:job)

    expect(job).to respond_to(:company)
    expect(job).to respond_to(:city)
    expect(job).to respond_to(:state)
    expect(job).to respond_to(:salary)
    expect(job).to respond_to(:user)
    expect(job).to respond_to(:location)
  end
  it { should belong_to(:user) }
end
