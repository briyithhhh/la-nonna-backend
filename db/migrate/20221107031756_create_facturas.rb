class CreateFacturas < ActiveRecord::Migration[7.0]
  def change
    create_table :facturas do |t|
      t.float :price
      t.string :tipo
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
