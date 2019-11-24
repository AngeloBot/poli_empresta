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

ActiveRecord::Schema.define(version: 20191124002618) do

  create_table "item_tools", force: :cascade do |t|
    t.integer "tool_id"
    t.integer "loan_id"
    t.integer "tool_quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "loans", force: :cascade do |t|
    t.integer "id_borrower"
    t.integer "id_owner"
    t.boolean "returned"
    t.boolean "accepted"
    t.date "start"
    t.date "end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "loans_tools", force: :cascade do |t|
    t.integer "loan_id", null: false
    t.integer "tool_id", null: false
    t.integer "tool_quantity", null: false
    t.index ["loan_id", "tool_id", "tool_quantity"], name: "index_loans_tools_on_loan_id_and_tool_id_and_tool_quantity", unique: true
  end

  create_table "students", force: :cascade do |t|
    t.boolean "admin"
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tools", force: :cascade do |t|
    t.integer "quantity"
    t.text "description"
    t.string "name"
    t.string "photo"
    t.integer "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
