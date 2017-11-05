FactoryBot.define do
  factory :job do
    sequence(:company) {|n| "#{n}#{Faker::Company.name}"}
    sequence(:title) {|n| "#{n}#{Faker::Company.profession}"}
    sequence(:city) {|n| "#{n}#{Faker::Address.city}"}
    sequence(:state) {|n| "#{n}#{Faker::Address.state}"}
    salary (75000..10000).to_a.sample
    association :user
    association :status
  end
end
