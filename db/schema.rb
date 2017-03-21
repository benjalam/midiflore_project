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

ActiveRecord::Schema.define(version: 20170321115851) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.string   "adress"
    t.string   "contact_info"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "harvest_details", force: :cascade do |t|
    t.string   "quantity"
    t.string   "time"
    t.integer  "products_id"
    t.integer  "harvests_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["harvests_id"], name: "index_harvest_details_on_harvests_id", using: :btree
    t.index ["products_id"], name: "index_harvest_details_on_products_id", using: :btree
  end

  create_table "harvests", force: :cascade do |t|
    t.date     "date"
    t.string   "total"
    t.integer  "employees_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["employees_id"], name: "index_harvests_on_employees_id", using: :btree
  end

  create_table "inventory_histories", force: :cascade do |t|
    t.string   "date"
    t.jsonb    "stock"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inventory_transactions", force: :cascade do |t|
    t.integer  "products_id"
    t.integer  "harvests_id"
    t.integer  "order_detail_id"
    t.integer  "purchase_details_id"
    t.integer  "manual_details_id"
    t.string   "quantity"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["harvests_id"], name: "index_inventory_transactions_on_harvests_id", using: :btree
    t.index ["manual_details_id"], name: "index_inventory_transactions_on_manual_details_id", using: :btree
    t.index ["order_detail_id"], name: "index_inventory_transactions_on_order_detail_id", using: :btree
    t.index ["products_id"], name: "index_inventory_transactions_on_products_id", using: :btree
    t.index ["purchase_details_id"], name: "index_inventory_transactions_on_purchase_details_id", using: :btree
  end

  create_table "manual_details", force: :cascade do |t|
    t.string   "quantity"
    t.string   "price"
    t.integer  "products_id"
    t.integer  "manuals_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["manuals_id"], name: "index_manual_details_on_manuals_id", using: :btree
    t.index ["products_id"], name: "index_manual_details_on_products_id", using: :btree
  end

  create_table "manuals", force: :cascade do |t|
    t.string   "date"
    t.string   "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_details", force: :cascade do |t|
    t.string   "quantity"
    t.string   "price"
    t.integer  "products_id"
    t.integer  "orders_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["orders_id"], name: "index_order_details_on_orders_id", using: :btree
    t.index ["products_id"], name: "index_order_details_on_products_id", using: :btree
  end

  create_table "orders", force: :cascade do |t|
    t.date     "date"
    t.string   "total"
    t.integer  "clients_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clients_id"], name: "index_orders_on_clients_id", using: :btree
  end

  create_table "products", force: :cascade do |t|
    t.string   "SKU"
    t.string   "name"
    t.text     "description"
    t.string   "type"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "purchase_details", force: :cascade do |t|
    t.string   "quantity"
    t.string   "price"
    t.integer  "purchase_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["purchase_id"], name: "index_purchase_details_on_purchase_id", using: :btree
  end

  create_table "purchases", force: :cascade do |t|
    t.date     "date"
    t.string   "total"
    t.integer  "suppliers_id"
    t.integer  "products_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["products_id"], name: "index_purchases_on_products_id", using: :btree
    t.index ["suppliers_id"], name: "index_purchases_on_suppliers_id", using: :btree
  end

  create_table "suppliers", force: :cascade do |t|
    t.string   "name"
    t.string   "adress"
    t.string   "contact_info"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "harvest_details", "harvests", column: "harvests_id"
  add_foreign_key "harvest_details", "products", column: "products_id"
  add_foreign_key "harvests", "employees", column: "employees_id"
  add_foreign_key "inventory_transactions", "harvests", column: "harvests_id"
  add_foreign_key "inventory_transactions", "manual_details", column: "manual_details_id"
  add_foreign_key "inventory_transactions", "order_details"
  add_foreign_key "inventory_transactions", "products", column: "products_id"
  add_foreign_key "inventory_transactions", "purchase_details", column: "purchase_details_id"
  add_foreign_key "manual_details", "manuals", column: "manuals_id"
  add_foreign_key "manual_details", "products", column: "products_id"
  add_foreign_key "order_details", "orders", column: "orders_id"
  add_foreign_key "order_details", "products", column: "products_id"
  add_foreign_key "orders", "clients", column: "clients_id"
  add_foreign_key "purchase_details", "purchases"
  add_foreign_key "purchases", "products", column: "products_id"
  add_foreign_key "purchases", "suppliers", column: "suppliers_id"
end
