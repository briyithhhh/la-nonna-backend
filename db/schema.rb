# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_11_01_165016) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "facturas", force: :cascade do |t|
    t.string "tipo"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.integer "quantity"
    t.string "serial"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "platillos", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "platillos_has_facturas", force: :cascade do |t|
    t.bigint "platillo_id", null: false
    t.bigint "factura_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["factura_id"], name: "index_platillos_has_facturas_on_factura_id"
    t.index ["platillo_id"], name: "index_platillos_has_facturas_on_platillo_id"
  end

  create_table "platillos_has_ingredients", force: :cascade do |t|
    t.bigint "ingredient_id", null: false
    t.bigint "platillo_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ingredient_id"], name: "index_platillos_has_ingredients_on_ingredient_id"
    t.index ["platillo_id"], name: "index_platillos_has_ingredients_on_platillo_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.bigint "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "lastname"
    t.string "cedula"
    t.string "email"
    t.string "password_digest"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users_has_facturas", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "factura_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["factura_id"], name: "index_users_has_facturas_on_factura_id"
    t.index ["user_id"], name: "index_users_has_facturas_on_user_id"
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

  add_foreign_key "platillos_has_facturas", "facturas"
  add_foreign_key "platillos_has_facturas", "platillos"
  add_foreign_key "platillos_has_ingredients", "ingredients"
  add_foreign_key "platillos_has_ingredients", "platillos"
  add_foreign_key "users_has_facturas", "facturas"
  add_foreign_key "users_has_facturas", "users"
end
