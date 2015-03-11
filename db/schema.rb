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

ActiveRecord::Schema.define(version: 20150225232456) do

  create_table "beekeepers", force: true do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "region"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "diseases", force: true do |t|
    t.string   "disease"
    t.datetime "date_found"
    t.integer  "hive_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "diseases", ["hive_id"], name: "index_diseases_on_hive_id"

  create_table "hives", force: true do |t|
    t.string   "name"
    t.integer  "population"
    t.integer  "beekeeper_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "hives", ["beekeeper_id"], name: "index_hives_on_beekeeper_id"

end