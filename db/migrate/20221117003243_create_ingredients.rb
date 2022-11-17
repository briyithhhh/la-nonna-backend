class CreateIngredients < ActiveRecord::Migration[7.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :quantity
      t.string :serial
      t.float :unit_price
      t.references :family, null: false, foreign_key: true

      t.timestamps
    end
  end
end
