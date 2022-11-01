class PlatillosHasFactura < ApplicationRecord
  belongs_to :platillo
  belongs_to :factura
end
