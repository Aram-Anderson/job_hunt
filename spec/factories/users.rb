FactoryBot.define do
  factory :user do
    uid        "2039587"
    first_name Faker::Name.first_name
    last_name  Faker::Name.last_name
    email      Faker::Internet.email
    token      Faker::Internet.password
    expires_at "11084"
    image_url  "http://lorempixel.com/g/400/200/"
  end
end
