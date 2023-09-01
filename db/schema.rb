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

ActiveRecord::Schema[7.0].define(version: 2023_09_01_022614) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "buildings", force: :cascade do |t|
    t.string "name"
    t.string "street"
    t.integer "number"
    t.bigint "comuna_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comuna_id"], name: "index_buildings_on_comuna_id"
  end

  create_table "buildings_services", id: false, force: :cascade do |t|
    t.bigint "service_id", null: false
    t.bigint "building_id", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_clients_on_user_id"
  end

  create_table "comunas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departaments", force: :cascade do |t|
    t.integer "floor"
    t.integer "number"
    t.integer "bedrooms"
    t.integer "bathrooms"
    t.integer "squaremeters"
    t.integer "price"
    t.bigint "client_id", null: false
    t.bigint "building_id", null: false
    t.bigint "status_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_departaments_on_building_id"
    t.index ["client_id"], name: "index_departaments_on_client_id"
    t.index ["status_id"], name: "index_departaments_on_status_id"
  end

  create_table "images", force: :cascade do |t|
    t.string "photo"
    t.bigint "departament_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["departament_id"], name: "index_images_on_departament_id"
  end

  create_table "publications", force: :cascade do |t|
    t.text "description"
    t.bigint "departament_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["departament_id"], name: "index_publications_on_departament_id"
    t.index ["user_id"], name: "index_publications_on_user_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "buildings", "comunas"
  add_foreign_key "clients", "users"
  add_foreign_key "departaments", "buildings"
  add_foreign_key "departaments", "clients"
  add_foreign_key "departaments", "statuses"
  add_foreign_key "images", "departaments"
  add_foreign_key "publications", "departaments"
  add_foreign_key "publications", "users"
end
