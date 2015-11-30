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

ActiveRecord::Schema.define(version: 20151126105018) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "degres", force: :cascade do |t|
    t.string   "name"
    t.string   "drege_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "educations", force: :cascade do |t|
    t.string   "division"
    t.string   "obtained_marks"
    t.date     "pass_year"
    t.integer  "user_id"
    t.integer  "degre_id"
    t.integer  "institute_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "educations", ["degre_id"], name: "index_educations_on_degre_id", using: :btree
  add_index "educations", ["institute_id"], name: "index_educations_on_institute_id", using: :btree
  add_index "educations", ["user_id"], name: "index_educations_on_user_id", using: :btree

  create_table "experiences", force: :cascade do |t|
    t.text     "work_type"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "work_field_id"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "experiences", ["user_id"], name: "index_experiences_on_user_id", using: :btree
  add_index "experiences", ["work_field_id"], name: "index_experiences_on_work_field_id", using: :btree

  create_table "institutes", force: :cascade do |t|
    t.string   "name"
    t.integer  "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "institutes", ["city_id"], name: "index_institutes_on_city_id", using: :btree

  create_table "userinfos", force: :cascade do |t|
    t.integer  "user_id"
    t.date     "date_of_birth"
    t.string   "gender"
    t.string   "mobile"
    t.text     "address"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "userinfos", ["user_id"], name: "index_userinfos_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "work_fields", force: :cascade do |t|
    t.string   "field_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "educations", "degres"
  add_foreign_key "educations", "institutes"
  add_foreign_key "educations", "users"
  add_foreign_key "experiences", "users"
  add_foreign_key "experiences", "work_fields"
  add_foreign_key "institutes", "cities"
  add_foreign_key "userinfos", "users"
end
