class Factura < ApplicationRecord
  has_many :platillos_has_facturas, dependent: :destroy
  has_many :platillos, through: :platillos_has_facturas

  has_one :users_has_factura, dependent: :destroy
  has_one :user, through: :users_has_factura
end
