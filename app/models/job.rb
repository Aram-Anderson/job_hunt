class Job < ApplicationRecord
  belongs_to :user
  belongs_to :status

  validates :company, :title, :city, :state, :salary, presence: true

  def location
    "#{city}, #{state}"
  end
end
