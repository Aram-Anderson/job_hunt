class Job < ApplicationRecord
  belongs_to :user
  belongs_to :status
  has_many :contacts, dependent: :destroy
  has_many :checklists, dependent: :destroy

  validates :company, :title, :city, :description, :state, :salary, presence: true

  def location
    "#{city}, #{state}"
  end
end
