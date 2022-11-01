class CreatePlatillosHasFacturas < ActiveRecord::Migration[7.0]
  def change
    create_table :platillos_has_facturas do |t|
      t.references :platillo, null: false, foreign_key: true
      t.references :factura, null: false, foreign_key: true

      t.timestamps
    end
  end
end
