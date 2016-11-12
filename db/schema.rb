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

ActiveRecord::Schema.define(version: 20161031044125) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "members", force: :cascade do |t|
    t.string  "name",          null: false
    t.string  "profile_image"
    t.text    "introduce",     null: false
    t.integer "depertment",    null: false
  end

  create_table "records", force: :cascade do |t|
    t.string   "title",      null: false
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.string  "title",         null: false
    t.integer "started_month", null: false
    t.integer "end_mouth",     null: false
    t.integer "started_day",   null: false
    t.integer "end_day",       null: false
  end

end
