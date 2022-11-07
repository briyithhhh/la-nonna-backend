class Factura < ApplicationRecord
  belongs_to :user

  has_many :platillos_has_facturas, dependent: :destroy
  has_many :platillos, through: :platillos_has_facturas
end
