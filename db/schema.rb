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

ActiveRecord::Schema.define(version: 20180326145623) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.text "description"
    t.string "logo"
    t.string "image"
    t.text "size_chart"
    t.integer "shipping_costs"
    t.string "url"
    t.bigint "product_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_brands_on_product_id"
    t.index ["user_id"], name: "index_brands_on_user_id"
  end

  create_table "colors", force: :cascade do |t|
    t.string "color"
    t.bigint "product_variation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_variation_id"], name: "index_colors_on_product_variation_id"
  end

  create_table "product_categories", force: :cascade do |t|
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_product_categories_on_product_id"
  end

  create_table "product_variations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "price"
    t.string "image"
    t.text "material_info"
    t.text "location_info"
    t.text "people_info"
    t.text "distance_info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.text "content"
    t.integer "stars"
    t.bigint "product_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_reviews_on_product_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "shopping_cart_items", force: :cascade do |t|
    t.integer "quantity"
    t.boolean "shipping_status"
    t.bigint "shopping_cart_id"
    t.bigint "product_variation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_variation_id"], name: "index_shopping_cart_items_on_product_variation_id"
    t.index ["shopping_cart_id"], name: "index_shopping_cart_items_on_shopping_cart_id"
  end

  create_table "shopping_carts", force: :cascade do |t|
    t.boolean "status"
    t.integer "total_commission"
    t.integer "total_shop_revenue"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_shopping_carts_on_user_id"
  end

  create_table "sizes", force: :cascade do |t|
    t.string "size"
    t.bigint "product_variation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_variation_id"], name: "index_sizes_on_product_variation_id"
  end

  create_table "stocks", force: :cascade do |t|
    t.integer "number"
    t.bigint "product_variation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_variation_id"], name: "index_stocks_on_product_variation_id"
  end

  create_table "target_audiences", force: :cascade do |t|
    t.string "gender"
    t.string "target_photo"
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_target_audiences_on_product_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "brands", "products"
  add_foreign_key "brands", "users"
  add_foreign_key "colors", "product_variations"
  add_foreign_key "product_categories", "products"
  add_foreign_key "reviews", "products"
  add_foreign_key "reviews", "users"
  add_foreign_key "shopping_cart_items", "product_variations"
  add_foreign_key "shopping_cart_items", "shopping_carts"
  add_foreign_key "shopping_carts", "users"
  add_foreign_key "sizes", "product_variations"
  add_foreign_key "stocks", "product_variations"
  add_foreign_key "target_audiences", "products"
end
