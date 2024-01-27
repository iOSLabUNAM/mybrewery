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

ActiveRecord::Schema[7.1].define(version: 2024_01_27_014102) do
  create_table "beers", force: :cascade do |t|
    t.string "name"
    t.string "kind", default: "ale"
    t.float "abu", default: 0.0
    t.integer "ibu", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kegs", force: :cascade do |t|
    t.integer "capacity_ml", default: 5000
    t.integer "consumed_ml", default: 0
    t.integer "beer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["beer_id"], name: "index_kegs_on_beer_id"
  end

  add_foreign_key "kegs", "beers"
end
