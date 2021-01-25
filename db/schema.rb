# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_22_160104) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
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
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "title"
    t.string "phone1"
    t.string "phone2"
    t.string "message"
    t.string "soc_facebook"
    t.string "soc_twitter"
    t.string "soc_linkedin"
    t.string "soc_google"
    t.string "soc_pinterest"
    t.string "soc_instagram"
    t.string "soc_telegram"
    t.string "soc_viber"
    t.string "soc_whatsapp"
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.bigint "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.index ["email"], name: "index_accounts_on_email", unique: true
    t.index ["reset_password_token"], name: "index_accounts_on_reset_password_token", unique: true
  end

  create_table "agencies", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "address"
    t.string "email"
    t.string "website"
    t.string "tel"
    t.string "country_id"
    t.float "balance"
    t.bigint "account_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["account_id"], name: "index_agencies_on_account_id"
  end

  create_table "agents", force: :cascade do |t|
    t.string "shortname"
    t.string "fullname"
    t.text "description"
    t.string "address"
    t.string "email"
    t.string "website"
    t.string "tel"
    t.integer "country_id"
    t.float "balance"
    t.bigint "account_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["account_id"], name: "index_agents_on_account_id"
  end

  create_table "balances", force: :cascade do |t|
    t.integer "account_index"
    t.float "amount"
    t.integer "currency_index"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "blogs", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "account_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "photo_file_name"
    t.string "photo_content_type"
    t.bigint "photo_file_size"
    t.datetime "photo_updated_at"
    t.index ["account_id"], name: "index_blogs_on_account_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "title"
    t.string "bytitle"
    t.string "keyword"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "ancestry"
    t.index ["ancestry"], name: "index_categories_on_ancestry"
  end

  create_table "contactmessages", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "subject"
    t.text "message"
    t.integer "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "ip_address"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "capital"
    t.string "president"
    t.string "currency_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "firmas", force: :cascade do |t|
    t.string "shortname"
    t.string "fullname"
    t.text "description"
    t.string "address"
    t.string "email"
    t.string "website"
    t.string "tel"
    t.string "whatsapp"
    t.string "viber"
    t.string "telegram"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "galleries", force: :cascade do |t|
    t.integer "property_id"
    t.string "img"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ilces", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "il_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["il_id"], name: "index_ilces_on_il_id"
  end

  create_table "ils", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "capital"
    t.bigint "country_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_ils_on_country_id"
  end

  create_table "mahales", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "ilce_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ilce_id"], name: "index_mahales_on_ilce_id"
  end

  create_table "properties", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "price"
    t.integer "rooms"
    t.integer "bathrooms"
    t.bigint "account_id"
    t.string "photo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.bigint "image_file_size"
    t.datetime "image_updated_at"
    t.string "property_id"
    t.text "description"
    t.float "prop_deteils_property_size"
    t.date "prop_deteils_year_built"
    t.integer "prop_deteils_garage"
    t.float "prop_deteils_garage_size"
    t.integer "prop_deteils_property_type"
    t.integer "prop_deteils_property_status"
    t.float "add_details_deposit"
    t.integer "add_details_pool_size"
    t.text "add_details_additional_rooms"
    t.date "add_details_last_remodel_year"
    t.text "add_details_amenities"
    t.text "add_details_equipment"
    t.integer "prop_f_air_cond"
    t.integer "prop_f_barbeque"
    t.integer "prop_f_dryer"
    t.integer "prop_f_gym"
    t.integer "prop_f_laundry"
    t.integer "prop_f_lawn"
    t.integer "prop_f_microwave"
    t.integer "prop_f_outdoor_shower"
    t.integer "prop_f_refrigerator"
    t.integer "prop_f_sauna"
    t.integer "prop_f_swimming_pool"
    t.integer "prop_f_tv_cable"
    t.integer "prop_f_washer"
    t.integer "prop_f_wi_fi"
    t.integer "prop_f_window_cover"
    t.text "youtube_link"
    t.integer "bedrooms"
    t.string "postal_index"
    t.text "country_index"
    t.text "il_index"
    t.text "ilce_index"
    t.text "mahalle_index"
    t.text "street_name"
    t.text "house_number_index"
    t.float "latitude"
    t.float "longitude"
    t.index ["account_id"], name: "index_properties_on_account_id"
  end

  create_table "property_statuses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "property_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "searches", force: :cascade do |t|
    t.string "keywords"
    t.integer "prop_deteils_property_type_id"
    t.integer "prop_deteils_property_status_id"
    t.integer "mahale_id"
    t.decimal "min_price"
    t.decimal "max_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "agencies", "accounts"
  add_foreign_key "agents", "accounts"
  add_foreign_key "blogs", "accounts"
  add_foreign_key "ilces", "ils"
  add_foreign_key "ils", "countries"
  add_foreign_key "mahales", "ilces"
end
