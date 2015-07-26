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

ActiveRecord::Schema.define(version: 20150726123532) do

  create_table "crops", force: :cascade do |t|
    t.string   "name"
    t.date     "planted_on"
    t.date     "harvested_on"
    t.integer  "yield"
    t.integer  "farm_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "crops", ["farm_id"], name: "index_crops_on_farm_id"

  create_table "crops_users", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "crop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "crops_users", ["crop_id"], name: "index_crops_users_on_crop_id"
  add_index "crops_users", ["user_id"], name: "index_crops_users_on_user_id"

  create_table "farms", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.integer  "imageable_id"
    t.string   "imageable_type"
    t.string   "image"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "images", ["imageable_type", "imageable_id"], name: "index_images_on_imageable_type_and_imageable_id"

  create_table "users", force: :cascade do |t|
    t.string   "full_name"
    t.boolean  "is_manager"
    t.integer  "farm_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "users", ["farm_id"], name: "index_users_on_farm_id"

end
