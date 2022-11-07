class CartsPlatillo < ApplicationRecord
  belongs_to :cart
  belongs_to :platillo
end
