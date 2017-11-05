class Job < ApplicationRecord
  belongs_to :user
  belongs_to :status

  def location
    "#{city}, #{state}"
  end
end
