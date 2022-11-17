class CreatePlatillosHasIngredients < ActiveRecord::Migration[7.0]
  def change
    create_table :platillos_has_ingredients do |t|
      t.references :platillo, null: false, foreign_key: true
      t.references :ingredient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
