class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :name
      t.string :lastname
      t.string :email
      t.string :phone
      t.string :message

      t.timestamps
    end
  end
end
