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

ActiveRecord::Schema.define(version: 20180403175231) do

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
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_brands_on_user_id"
  end

  create_table "colors", force: :cascade do |t|
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_categories", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "category"
  end

  create_table "product_variations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "color_id"
    t.bigint "product_id"
    t.bigint "size_id"
    t.index ["color_id"], name: "index_product_variations_on_color_id"
    t.index ["product_id"], name: "index_product_variations_on_product_id"
    t.index ["size_id"], name: "index_product_variations_on_size_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "image"
    t.text "material_info"
    t.text "location_info"
    t.text "people_info"
    t.text "distance_info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "target_audience_id"
    t.bigint "brand_id"
    t.bigint "product_category_id"
    t.integer "price_cents", default: 0, null: false
    t.string "image2"
    t.string "image3"
    t.string "image4"
    t.index ["brand_id"], name: "index_products_on_brand_id"
    t.index ["product_category_id"], name: "index_products_on_product_category_id"
    t.index ["target_audience_id"], name: "index_products_on_target_audience_id"
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
    t.integer "quantity", default: 1
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
    t.integer "amount_cents", default: 0, null: false
    t.jsonb "payment"
    t.index ["user_id"], name: "index_shopping_carts_on_user_id"
  end

  create_table "sizes", force: :cascade do |t|
    t.string "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stocks", force: :cascade do |t|
    t.integer "number"
    t.bigint "product_variation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_variation_id"], name: "index_stocks_on_product_variation_id"
  end

  create_table "sustainability_infos", force: :cascade do |t|
    t.text "sustainability_class"
    t.text "description"
    t.text "rating"
    t.bigint "products_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "product_id"
    t.string "icon"
    t.string "icon_pale"
    t.index ["product_id"], name: "index_sustainability_infos_on_product_id"
    t.index ["products_id"], name: "index_sustainability_infos_on_products_id"
  end

  create_table "target_audiences", force: :cascade do |t|
    t.string "gender"
    t.string "target_photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name", null: false
    t.string "address", null: false
    t.string "telephone"
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
    t.string "photo"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "brands", "users"
  add_foreign_key "reviews", "products"
  add_foreign_key "reviews", "users"
  add_foreign_key "shopping_cart_items", "product_variations"
  add_foreign_key "shopping_cart_items", "shopping_carts"
  add_foreign_key "shopping_carts", "users"
  add_foreign_key "stocks", "product_variations"
end
