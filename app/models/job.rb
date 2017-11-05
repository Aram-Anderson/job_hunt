class Job < ApplicationRecord
  belongs_to :user

  def location
    "#{city}, #{state}"
  end
end
