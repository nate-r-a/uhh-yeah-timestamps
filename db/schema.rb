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

ActiveRecord::Schema.define(version: 2018_05_07_185622) do

  create_table "episodes", force: :cascade do |t|
    t.string "title"
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "release_date"
    t.string "filename"
    t.boolean "archived", default: false
  end

  create_table "segments", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "timestamps", force: :cascade do |t|
    t.integer "start"
    t.string "comment"
    t.integer "episode_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "segment_id"
    t.index ["episode_id"], name: "index_timestamps_on_episode_id"
    t.index ["segment_id"], name: "index_timestamps_on_segment_id"
  end

end
