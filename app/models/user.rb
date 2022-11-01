class User < ApplicationRecord
  rolify
  has_many :users_has_facturas, dependent: :destroy
  has_many :facturas, through: :users_has_facturas

  def assign_default_role
    add_role(:client) if self.roles.blank?
  end

  # user = User.find(1)
  # user.add_role(:admin) # adds an admin role to the user
end
