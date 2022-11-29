# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_11_29_101758) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "address"
    t.string "address_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "baskets", force: :cascade do |t|
    t.integer "count"
    t.integer "menu_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ceos", force: :cascade do |t|
    t.string "login_id"
    t.string "password"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "login_id"
    t.string "password"
    t.string "phone"
    t.string "email"
    t.string "nickname"
    t.string "current_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dibs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "homes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menus", force: :cascade do |t|
    t.string "menu"
    t.integer "menu_price"
    t.string "menu_category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "total_price"
    t.string "requests"
    t.string "payment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.text "content"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stores", force: :cascade do |t|
    t.string "store_name"
    t.string "store_address"
    t.string "food_category"
    t.integer "min_price"
    t.integer "tip"
    t.text "content"
    t.text "guide"
    t.string "phone"
    t.string "delivery_address"
    t.string "operation_address"
    t.string "closedDays"
    t.integer "dibs_count"
    t.integer "review_count"
    t.integer "rating_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_orders", force: :cascade do |t|
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
    t.string "phone"
    t.string "nickname"
    t.string "current_address"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
