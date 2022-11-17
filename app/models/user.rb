class User < ApplicationRecord
  has_secure_password
  
  has_one_attached :avatar

  has_many :facturas, dependent: :destroy
  
  has_one :cart, dependent: :destroy

  has_many :cards, dependent: :destroy

  has_many :chatroom_users
  has_many :chatrooms, through: :chatroom_users
  has_many :messages
  
  rolify

  def assign_default_role
    add_role(:client) if self.roles.blank?
  end

#  def avatar
#    if object.avatar.attached?
#      Cloudinary::Utils.cloudinary_url(object.avatar.key)
#    end
#  end

  def avatar_url
    Rails.application.routes.url_helpers.url_for(avatar) if avatar.attached?
  end

  def has_card?
    if self.cards.count > 0
      return true
    else
      return false
    end
  end

  def has_card 
    if self.cards.count > 0
      return self.cards.all
    else
      return nil
    end
  end

  before_save :downcase_email

  def downcase_email
    self.email = email.downcase
  end

  def full_name
    "#{name} #{lastname}"
  end

  # rails admin
  rails_admin do
    list do
      field :full_name
      field :cedula
      field :email
      field :roles
    end
  end
end
