class Ingredient < ApplicationRecord
  belongs_to :family
  
  has_many :platillos_has_ingredients, dependent: :destroy
  has_many :platillos, through: :platillos_has_ingredients
end
