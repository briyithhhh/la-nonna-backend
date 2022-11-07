class Cart < ApplicationRecord
  belongs_to :user

  has_many :carts_platillos, dependent: :destroy
  has_many :platillos, through: :carts_platillos
end
