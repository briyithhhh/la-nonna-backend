class CreateCartsPlatillos < ActiveRecord::Migration[7.0]
  def change
    create_table :carts_platillos do |t|
      t.references :cart, null: false, foreign_key: true
      t.references :platillo, null: false, foreign_key: true
      t.integer :quantity, default: 0

      t.timestamps
    end
  end
end
