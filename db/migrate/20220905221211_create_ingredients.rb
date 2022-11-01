class CreateIngredients < ActiveRecord::Migration[7.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :type
      t.integer :quantity
      t.string :serial

      t.timestamps
    end
  end
end
