class Ingredient < ApplicationRecord
  has_many :platillos_has_ingredients, dependent: :destroy
  has_many :platillos, through: :platillos_has_ingredients
end
