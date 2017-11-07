class Company

  attr_reader :name, :website, :industry, :number_of_ratings, :square_logo, :overall_rating, :rating_description, :culture_and_values_rating, :senior_leadership_rating, :compensation_and_benefits_rating, :career_opportunities_rating, :work_life_balance_rating, :recommend_to_friend_rating, :featured_review_date, :featured_review_pros, :featured_review_cons

  def initialize(create_hash)
     @name  =  create_hash[:name]
     @website  =  create_hash[:website]
     @industry  =  create_hash[:industry]
     @number_of_ratings  =  create_hash[:numberOfRatings]
     @square_logo  =  create_hash[:squareLogo]
     @overall_rating  =  create_hash[:overallRating]
     @rating_description  =  create_hash[:ratingDescription]
     @culture_and_values_rating  =  create_hash[:cultureAndValuesRating]
     @senior_leadership_rating  =  create_hash[:seniorLeadershipRating]
     @compensation_and_benefits_rating  =  create_hash[:compensationAndBenefitsRating]
     @career_opportunities_rating  =  create_hash[:careerOpportunitiesRating]
     @work_life_balance_rating  =  create_hash[:workLifeBalanceRating]
     @recommend_to_friend_rating  =  create_hash[:recommendToFriendRating]
     @featured_review_date  =  create_hash[:featuredReview][:reviewDateTime]
     @featured_review_pros  =  create_hash[:featuredReview][:pros]
     @featured_review_cons  =  create_hash[:featuredReview][:cons]
   end

   def rating_to_percentage(rating)
     (rating.to_f / 5) * 100
   end
end
