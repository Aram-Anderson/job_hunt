class Checklist < ApplicationRecord
  belongs_to :job

  validates :task, presence: true
end
