FactoryBot.define do
  factory :checklist do
    task "do a thing"
    association :job
  end
end
