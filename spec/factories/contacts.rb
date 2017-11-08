FactoryBot.define do
  factory :contact do
    sequence(:name) {|n| "#{n}#{Faker::Name.name}"}
    sequence(:phone) {|n| "#{n}#{Faker::PhoneNumber.cell_phone}"}
    sequence(:email) {|n| "#{n}#{Faker::Internet.email}"}
    image_url "http://lorumpixel.com/200/200"
    association :job
  end
end
