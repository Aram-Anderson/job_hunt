class User < ApplicationRecord

  has_many :jobs

  validates :uid, :first_name, :last_name, :email, :token, :expires_at, :image_url, presence: true

  def self.from_omniauth(auth_info)
    where(uid: auth_info[:uid]).first_or_create do |new_user|
      new_user.uid         = auth_info["uid"]
      new_user.first_name  = auth_info["info"]["first_name"]
      new_user.last_name   = auth_info["info"]["last_name"]
      new_user.email       = auth_info["info"]["email"]
      new_user.token       = auth_info["credentials"]["token"]
      new_user.expires_at  = auth_info["credentials"]["expires_at"]
      new_user.image_url   = auth_info["info"]["image"]
    end
  end

  def name
    "#{first_name} #{last_name}"
  end
end
