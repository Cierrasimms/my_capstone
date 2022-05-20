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

ActiveRecord::Schema[7.0].define(version: 2022_05_15_195021) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "images", force: :cascade do |t|
    t.string "url"
    t.integer "pokemon_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemon_teams", force: :cascade do |t|
    t.integer "user_id"
    t.integer "pokemon_id"
    t.string "active"
    t.integer "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemons", force: :cascade do |t|
    t.integer "hp"
    t.integer "attack"
    t.integer "defense"
    t.integer "spec_attack"
    t.integer "spec_defense"
    t.integer "speed"
    t.integer "total"
    t.string "type"
    t.string "species"
    t.string "height"
    t.string "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "pokemon_type"
  end

  create_table "teams", force: :cascade do |t|
    t.integer "pokemon_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_confirmation"
    t.string "password_digest"
  end

end
