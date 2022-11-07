class User < ApplicationRecord
  has_secure_password
  
  has_one_attached :avatar

  has_many :facturas, dependent: :destroy
  
  has_one :cart, dependent: :destroy

  has_many :cards, dependent: :destroy
  
  rolify

  def assign_default_role
    add_role(:client) if self.roles.blank?
  end

#  def avatar
#    if object.avatar.attached?
#      Cloudinary::Utils.cloudinary_url(object.avatar.key)
#    end
#  end

  before_save :downcase_email

  def downcase_email
    self.email = email.downcase
  end
end
