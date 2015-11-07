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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20151107191922) do
=======
ActiveRecord::Schema.define(version: 20151107193541) do
>>>>>>> a29897e0e15b210b55a924c26390a50b64a345d6

  create_table "costs", force: :cascade do |t|
    t.string   "title"
    t.decimal  "amount"
    t.integer  "parent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date     "due"
    t.boolean  "paid"
  end

<<<<<<< HEAD
=======
  create_table "events", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.date     "date"
    t.time     "time"
    t.integer  "parent_id"
    t.integer  "child_id"
    t.integer  "mediator_id"
    t.boolean  "pending"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

>>>>>>> a29897e0e15b210b55a924c26390a50b64a345d6
  create_table "payments", force: :cascade do |t|
    t.string   "title"
    t.decimal  "amount"
    t.integer  "parent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date     "paid_at"
    t.integer  "cost_id"
  end

end
