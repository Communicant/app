# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151118003033) do

  create_table "approvals", force: :cascade do |t|
    t.boolean  "parent_approval"
    t.integer  "event_id"
    t.integer  "parent_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "children", force: :cascade do |t|
    t.string   "first_name"
    t.integer  "age"
    t.integer  "parent_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "case_number"
  end

  create_table "event_children", force: :cascade do |t|
    t.integer  "event_id"
    t.integer  "child_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.date     "date"
    t.time     "time"
    t.integer  "parent_id"
    t.integer  "child_id"
    t.integer  "mediator_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "location"
    t.integer  "user_id"
  end

  create_table "expenses", force: :cascade do |t|
    t.string   "type",       null: false
    t.datetime "due_at"
    t.decimal  "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "body",       null: false
    t.date     "date"
    t.time     "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.decimal  "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date     "paid_at"
    t.integer  "created_by"
    t.integer  "paid_by"
    t.integer  "expense_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.text     "address"
    t.text     "phone_number"
    t.string   "child_name"
    t.integer  "case_number"
    t.string   "mediator_name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.text     "name2"
    t.text     "email2"
    t.text     "phone2"
  end

  create_table "user_cases", force: :cascade do |t|
    t.integer  "case_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string  "type"
    t.string  "username"
    t.string  "password_digest"
    t.string  "email"
    t.string  "first_name"
    t.string  "last_name"
    t.text    "address"
    t.integer "phone_number"
    t.integer "child_id"
  end

end
