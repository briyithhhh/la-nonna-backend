class UsersHasFactura < ApplicationRecord
  belongs_to :user
  belongs_to :factura
end
