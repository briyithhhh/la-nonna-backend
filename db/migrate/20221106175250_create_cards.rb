class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.string :card_number
      t.string :cvc
      t.string :exp_month
      t.string :exp_year
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
