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

ActiveRecord::Schema.define(version: 2021_03_11_121807) do

  create_table "activities", force: :cascade do |t|
    t.string "name"
    t.text "description"
  end

  create_table "bookmarks", force: :cascade do |t|
    t.integer "user_id"
    t.integer "activity_id"
  end

  create_table "problems", force: :cascade do |t|
    t.string "problem_type"
  end

  create_table "solutions", force: :cascade do |t|
    t.integer "activity_id"
    t.integer "problem_id"
  end

  create_table "user_activities", force: :cascade do |t|
    t.integer "user_id"
    t.integer "activity_id"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password"
    t.date "birthday"
    t.string "avatar", default: "😊"
    t.text "motto", default: "Be the Hamstar"
    t.string "happy_url", default: "https://www.reddit.com/r/aww/"
  end

end
