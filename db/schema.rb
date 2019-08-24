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

ActiveRecord::Schema.define(version: 2019_08_24_103411) do

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

  add_foreign_key "customers", "stores"
  add_foreign_key "employees", "stores"
end
