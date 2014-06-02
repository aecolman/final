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

ActiveRecord::Schema.define(version: 20140602194712) do

  create_table "cars", force: true do |t|
    t.string  "make"
    t.string  "model"
    t.integer "msrp"
    t.integer "hp"
    t.string  "drive_type"
    t.integer "electric_range"
    t.integer "gas_range"
    t.integer "total_range"
    t.float   "hours_to_charge"
    t.string  "front_photo_url"
    t.string  "back_photo_url"
    t.string  "side_photo_url"
    t.string  "quarter_photo_url"
  end

  create_table "powers", force: true do |t|
    t.string "energy_source"
  end

  create_table "reviews", force: true do |t|
    t.integer "car_id"
    t.integer "user_id"
    t.text    "comment"
  end

  create_table "trips", force: true do |t|
    t.integer "user_id"
    t.integer "day"
    t.integer "miles"
  end

  create_table "users", force: true do |t|
    t.string "username"
    t.string "password"
    t.string "firstname"
    t.string "lastname"
  end

end
