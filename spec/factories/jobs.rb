FactoryBot.define do
  factory :job do
    sequence(:company) {|n| "#{n}#{Faker::Company.name}"}
    sequence(:title) {|n| "#{n}#{Faker::Company.profession}"}
    sequence(:city) {|n| "#{n}#{Faker::Address.city}"}
    sequence(:state) {|n| "#{n}#{Faker::Address.state}"}
    description "Write cutting edge code. Work on any part of the stack - from very rich, highly complex H5 applications to hugely scalable distributed systems. Deploy quickly to production. Work on an agile development team. Work with other engineers, designers, and test engineers to bring prototypes to life. What Youll Need: BS CS/EE/CE, or equivalent job experience. A passion for coding and building complex web applications. A passion and excitement for mentoring and developing junior engineers. Proficient in numerous front end and back end languages; expertise as a full stack engineer. Fluent with the latest web technologies (Python, Java, Go, Docker, NoSQL). Experience with AWS or Google Cloud Platform (GCP) technologies. Excellent problem-solving skills, great attention to details. Strong communication skills, both verbal and written. Ability to learn new technologies quickly and understand a wide variety of technical challenges to be solved. Statistics and data analytics background, passion for data science.  Experience with Hadoop or Spark. Experience in Machine Learning in Production Environments. Familiarity writing code that works across all popular platforms and browsers. Experience with Google Compute Engine. Experience with Docker or other container systems. Experience with Graph Databases"
    salary 75000
    association :user
    association :status
  end
end
