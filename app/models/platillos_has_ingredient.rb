class PlatillosHasIngredient < ApplicationRecord
  belongs_to :ingredient
  belongs_to :platillo
end
