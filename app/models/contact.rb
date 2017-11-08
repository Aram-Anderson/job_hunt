class Contact < ApplicationRecord
  belongs_to :job

  validates :name, presence: true

  validates :email, presence: { if: -> { phone.blank? } }
  validates :phone, presence: { if: -> { email.blank? } }
end
