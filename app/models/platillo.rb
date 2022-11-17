class Platillo < ApplicationRecord
  has_one_attached :image

  has_many :platillos_has_ingredients, dependent: :destroy
  has_many :ingredients, through: :platillos_has_ingredients

  has_many :platillos_has_facturas, dependent: :destroy
  has_many :facturas, through: :platillos_has_facturas

  has_many :carts_platillos, dependent: :destroy
  has_many :carts, through: :carts_platillos

  def image_url
    Rails.application.routes.url_helpers.url_for(image) if image.attached?
  end
end
