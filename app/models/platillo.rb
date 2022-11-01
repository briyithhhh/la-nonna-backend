class Platillo < ApplicationRecord
  has_many :platillos_has_ingredients, dependent: :destroy
  has_many :ingredients, through: :platillos_has_ingredients

  has_many :platillos_has_facturas, dependent: :destroy
  has_many :facturas, through: :platillos_has_facturas
end
