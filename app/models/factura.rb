class Factura < ApplicationRecord
  belongs_to :user

  has_many :platillos_has_facturas, dependent: :destroy
  has_many :platillos, through: :platillos_has_facturas

  def assign_iva()
    self.update(iva: 1.16)
  end

  def find_platillos(factura_id)
    return Factura.find(factura_id).platillos
  end

  def has_platillos?()
    return !PlatillosHasFactura.find_by(factura_id: self.id).nil?
  end

  def has_platillos()
    if self.has_platillos? == false
      return "No tiene platillos"
    else 
      return PlatillosHasFactura.find_by(factura_id: self.id)
    end
  end

  def total()
    total = 0
    self.platillos.each do |platillo|
      total += platillo.price
    end
    return total
  end

  def total_iva()
    total = 0
    self.platillos.each do |platillo|
      total += platillo.price
    end
    return total * self.iva
  end

  def update_price()
    self.update(price: self.total)
    self.update(total: self.total_iva)
    self.update(tipo: "Fiscal")
  end

  def add_platillos(platillo_id, factura_id)
    PlatillosHasFactura.create(factura_id: factura_id, platillo_id: platillo_id)
    update_price()
  end

  def remove_platillos(platillo_id, factura_id)
    PlatillosHasFactura.where(factura_id: factura_id, platillo_id: platillo_id).destroy
    update_price()
  end

  rails_admin do
    list do
      field :id
      field :user
      field :platillos
      field :price
      field :iva
      field :total
      field :tipo
    end
  end
end
