class PlatillosHasIngredient < ApplicationRecord
  belongs_to :platillo
  belongs_to :ingredient
end
