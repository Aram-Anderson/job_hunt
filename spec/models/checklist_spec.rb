require 'rails_helper'

RSpec.describe Checklist, type: :model do
  it "has attributes" do
    checklist = create(:checklist)

    expect(checklist).to respond_to(:task)
  end
  it { should validate_presence_of(:task) }
end
