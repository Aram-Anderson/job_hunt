RSpec.describe Company, type: :model do
  it "has attributes" do
    attrs_hash = {
    name:  "company1",
    website:  "company.com",
    industry:  "The Internet",
    numberOfRatings:  "985",
    squareLogo:  "company.png",
    overallRating:  "3.9",
    ratingDescription:  "Satisfied",
    cultureAndValuesRating:  "3.5",
    seniorLeadershipRating:  "3.2",
    compensationAndBenefitsRating:  "3.5",
    careerOpportunitiesRating:  "3.2",
    workLifeBalanceRating:  "3.5",
    recommendToFriendRating:  "3.1",
    featuredReview: {
    reviewDateTime:  "2017-11-02 14:33:27.067",
    pros:  "Stuff is good",
    cons:  "Stuff is bad"}}

    company = Company.new(attrs_hash)

    expect(company.name).to eq("company1")
    expect(company.industry).to eq("The Internet")
    expect(company.number_of_ratings).to eq("985")
    expect(company.square_logo).to eq("company.png")
    expect(company.overall_rating).to eq("3.9")
    expect(company.rating_description).to eq("Satisfied")
    expect(company.culture_and_values_rating).to eq("3.5")
    expect(company.senior_leadership_rating).to eq("3.2")
    expect(company.compensation_and_benefits_rating).to eq("3.5")
    expect(company.career_opportunities_rating).to eq("3.2")
    expect(company.work_life_balance_rating).to eq("3.5")
    expect(company.recommend_to_friend_rating).to eq("3.1")
    expect(company.featured_review_date).to eq("2017-11-02 14:33:27.067")
    expect(company.featured_review_pros).to eq("Stuff is good")
    expect(company.featured_review_cons).to eq("Stuff is bad")
  end
  it "has instance methods" do
    attrs_hash = {
    name:  "company1",
    website:  "company.com",
    industry:  "The Internet",
    numberOfRatings:  "985",
    squareLogo:  "company.png",
    overallRating:  "3.9",
    ratingDescription:  "Satisfied",
    cultureAndValuesRating:  "3.5",
    seniorLeadershipRating:  "3.2",
    compensationAndBenefitsRating:  "3.5",
    careerOpportunitiesRating:  "3.2",
    workLifeBalanceRating:  "3.5",
    recommendToFriendRating:  "3.1",
    featuredReview: {
    reviewDateTime:  "2017-11-02 14:33:27.067",
    pros:  "Stuff is good",
    cons:  "Stuff is bad"}}

    company = Company.new(attrs_hash)

    expect(company.to_hundred(company.overall_rating)).to eq(78.0)

  end
end
