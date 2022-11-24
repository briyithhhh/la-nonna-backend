class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :lastname
      t.string :cedula
      t.string :email
      t.string :password_digest
      t.string :location
      t.string :area_code, default: "58"
      t.string :phone
      t.string :reset_psw

      t.timestamps
    end
  end
end
