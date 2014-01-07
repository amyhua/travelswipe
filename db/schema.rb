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

ActiveRecord::Schema.define(version: 20140107212943) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "category_scores", force: true do |t|
    t.float    "score"
    t.integer  "category_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "category_scores", ["category_id"], name: "index_category_scores_on_category_id"
  add_index "category_scores", ["user_id"], name: "index_category_scores_on_user_id"

  create_table "category_weights", force: true do |t|
    t.float    "weight"
    t.integer  "category_id"
    t.integer  "city_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "category_weights", ["category_id"], name: "index_category_weights_on_category_id"
  add_index "category_weights", ["city_id"], name: "index_category_weights_on_city_id"

  create_table "cities", force: true do |t|
    t.string "name"
    t.text   "description"
  end

  create_table "city_scores", force: true do |t|
    t.float    "score"
    t.integer  "city_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "city_scores", ["city_id"], name: "index_city_scores_on_city_id"
  add_index "city_scores", ["user_id"], name: "index_city_scores_on_user_id"

  create_table "listing_categories", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "listings", force: true do |t|
    t.integer  "user_id"
    t.boolean  "is_voted",           default: false
    t.boolean  "is_liked"
    t.integer  "city_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "listings", ["category_id"], name: "index_listings_on_category_id"
  add_index "listings", ["city_id"], name: "index_listings_on_city_id"
  add_index "listings", ["user_id"], name: "index_listings_on_user_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "uid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
