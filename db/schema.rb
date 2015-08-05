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

ActiveRecord::Schema.define(version: 20150803181808) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "likes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "salon_id"
    t.integer  "professional_id"
    t.integer  "photo_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "likes", ["photo_id"], name: "index_likes_on_photo_id", using: :btree
  add_index "likes", ["professional_id"], name: "index_likes_on_professional_id", using: :btree
  add_index "likes", ["salon_id"], name: "index_likes_on_salon_id", using: :btree
  add_index "likes", ["user_id"], name: "index_likes_on_user_id", using: :btree

  create_table "photos", force: :cascade do |t|
    t.integer  "before_photo_id"
    t.integer  "after_photo_id"
    t.integer  "photo_pair_id"
    t.string   "comment"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "professionals", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.string   "first_name",      null: false
    t.string   "last_name",       null: false
    t.string   "salon_name",      null: false
    t.string   "member_type",     null: false
    t.string   "profile_photo"
    t.string   "phone_number"
    t.string   "web_address"
    t.string   "before_photo_id"
    t.string   "after_photo_id"
    t.string   "photo_pair_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "professionals", ["last_name"], name: "index_professionals_on_last_name", using: :btree

  create_table "salons", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.string   "salon_name",      null: false
    t.string   "member_type",     null: false
    t.string   "profile_photo"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.integer  "zipcode"
    t.string   "phone_number"
    t.string   "web_address"
    t.string   "before_photo_id"
    t.string   "after_photo_id"
    t.string   "photo_pair_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "salons", ["salon_name"], name: "index_salons_on_salon_name", using: :btree
  add_index "salons", ["zipcode"], name: "index_salons_on_zipcode", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.string   "username",        null: false
    t.string   "member_type",     null: false
    t.string   "profile_photo"
    t.string   "before_photo_id"
    t.string   "after_photo_id"
    t.string   "photo_pair_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree

  create_table "widgets", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "stock"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_foreign_key "likes", "photos"
  add_foreign_key "likes", "professionals"
  add_foreign_key "likes", "salons"
  add_foreign_key "likes", "users"
end
