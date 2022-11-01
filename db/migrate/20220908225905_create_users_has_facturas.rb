class CreateUsersHasFacturas < ActiveRecord::Migration[7.0]
  def change
    create_table :users_has_facturas do |t|
      t.references :user, null: false, foreign_key: true
      t.references :factura, null: false, foreign_key: true

      t.timestamps
    end
  end
end
