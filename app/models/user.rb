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

  def downcase_email
    self.email = email.downcase
  end

  def full_name
    "#{name} #{lastname}"
  end

  def self.search(search)
    if search
      where('cedula LIKE ?', "%#{search}%")
    else
      all
    end
  end

  def self.roles
    Role.all.map { |role| role.name }
  end

  def self.permissions(role)
    "#{role}"
  end

  def self.find_cart(user_id)
    Cart.find_by(user_id: user_id)
  end

  def self.add_items_to_cart(user_id, product_id, quantity)
    cart = Cart.find_by(user_id: user_id).carts_platillos.create(platillo_id: product_id, quantity: quantity)
    cart.carts_platillos.create(product_id: product_id, quantity: quantity)
  end

  def self.authorize_role(role)
    if role == "admin"
      return true
    else
      return false
    end
  end

  def role
    return self.roles[0].name
  end

  def generate_password_token
    self.update(reset_psw: rand(100000..999999).to_s)
  end

  # def send_password_reset(user_id)
  #   generate_password_token(user_id)
  # end

  def authorize_change_password(token)
    if self.reset_psw == token
      return true
    else
      return false
    end
  end

  before_save :downcase_email
  after_create :generate_password_token

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
