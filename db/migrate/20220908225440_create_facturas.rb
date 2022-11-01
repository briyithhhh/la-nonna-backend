class CreateFacturas < ActiveRecord::Migration[7.0]
  def change
    create_table :facturas do |t|
      t.string :tipo
      t.float :price

      t.timestamps
    end
  end
end
