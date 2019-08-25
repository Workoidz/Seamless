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

ActiveRecord::Schema.define(version: 2019_08_25_083954) do

  create_table "customer_measurements", force: :cascade do |t|
    t.string "upper_body_back_shape"
    t.string "upper_body_stomach"
    t.string "upper_body_shoulder"
    t.string "lower_body_posture"
    t.integer "jacket_or_shirt_length"
    t.integer "jacket_or_shirt_shoulder"
    t.integer "jacket_or_shirt_sleeve_length"
    t.integer "jacket_or_shirt_chest"
    t.integer "jacket_or_shirt_waist"
    t.integer "jacket_or_shirt_neck"
    t.integer "jacket_or_shirt_hip"
    t.integer "jacket_or_shirt_hale_back"
    t.integer "jacket_or_shirt_cross_back"
    t.integer "jacket_or_shirt_bicep"
    t.integer "jacket_or_shirt_cross_front"
    t.integer "jacket_or_shirt_arm_hole_round"
    t.integer "trouser_length"
    t.integer "trouser_crotch"
    t.integer "trouser_inseam"
    t.integer "trouser_waist"
    t.integer "trouser_hip"
    t.integer "trouser_knee"
    t.integer "trouser_thigh"
    t.integer "trouser_bottom"
    t.integer "trouser_f_low"
    t.integer "customer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_customer_measurements_on_customer_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "customer_name"
    t.string "contact_number"
    t.string "email"
    t.text "address"
    t.date "date_of_birth"
    t.date "date_of_anniversary"
    t.string "picture"
    t.string "profile"
    t.integer "sales_person"
    t.integer "store_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["store_id"], name: "index_customers_on_store_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "employee_name"
    t.string "mobile"
    t.string "password_digest"
    t.string "role"
    t.string "email"
    t.string "aadhar_card_no"
    t.integer "store_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "orders", force: :cascade do |t|
    t.date "order_date"
    t.date "trail_date"
    t.string "trail_status"
    t.date "delivery_date"
    t.string "delivery_status"
    t.string "order_pictures"
    t.string "trail_pictures"
    t.text "remark"
    t.integer "stitching_cost"
    t.integer "fabric_cost"
    t.integer "stitching_advance"
    t.integer "fabric_advance"
    t.string "balance_clear_status"
    t.integer "master_allocated"
    t.integer "customer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_orders_on_customer_id"
  end

  create_table "stores", force: :cascade do |t|
    t.string "store_name"
    t.string "contact_person_name"
    t.text "address"
    t.string "contact_number"
    t.string "email"
    t.string "facebook_link"
    t.string "whatsapp_number"
    t.string "youtube_link"
    t.string "instagram_link"
    t.string "website"
    t.string "logo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "customer_measurements", "customers"
  add_foreign_key "customers", "stores"
  add_foreign_key "employees", "stores"
  add_foreign_key "orders", "customers"
end
