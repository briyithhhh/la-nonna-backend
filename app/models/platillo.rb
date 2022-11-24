class Platillo < ApplicationRecord
  # has_one_attached :image

  has_many :platillos_has_ingredients, dependent: :destroy
  has_many :ingredients, through: :platillos_has_ingredients

  has_many :platillos_has_facturas, dependent: :destroy
  has_many :facturas, through: :platillos_has_facturas

  has_many :carts_platillos, dependent: :destroy
  has_many :carts, through: :carts_platillos

  # def image_url
  #   Rails.application.routes.url_helpers.url_for(image) if image.attached?
  # end

  def add_ingredient(ingredient_id)
    PlatillosHasIngredient.create(platillo_id: self.id, ingredient_id: ingredient_id)  
  end

  def remove_ingredient(ingredient_id)
    PlatillosHasIngredient.where(platillo_id: self.id, ingredient_id: ingredient_id).destroy
  end

  def has_ingredients?()
    return !PlatillosHasIngredient.find_by(platillo_id: self.id).nil?
  end

  def has_ingredients()
    if self.has_ingredients? == false
      return "No tiene ingredientes"
    else 
      return PlatillosHasIngredient.find_by(platillo_id: self.id)
    end
  end
end
