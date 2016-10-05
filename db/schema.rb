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

ActiveRecord::Schema.define(version: 20160815001646) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "offer_skills", force: :cascade do |t|
    t.integer  "offer_id_id"
    t.integer  "skill_id_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["offer_id_id"], name: "index_offer_skills_on_offer_id_id"
    t.index ["skill_id_id"], name: "index_offer_skills_on_skill_id_id"
  end

  create_table "offer_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "offers", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "salary"
    t.integer  "user_id"
    t.integer  "offer_type_id"
    t.integer  "location_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["location_id"], name: "index_offers_on_location_id"
    t.index ["offer_type_id"], name: "index_offers_on_offer_type_id"
    t.index ["user_id"], name: "index_offers_on_user_id"
  end

  create_table "professional_titles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seekers", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "offer_id"
    t.integer  "status_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["offer_id"], name: "index_seekers_on_offer_id"
    t.index ["status_id"], name: "index_seekers_on_status_id"
    t.index ["user_id"], name: "index_seekers_on_user_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_skills", force: :cascade do |t|
    t.integer  "user_id_id"
    t.integer  "skill_id_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["skill_id_id"], name: "index_user_skills_on_skill_id_id"
    t.index ["user_id_id"], name: "index_user_skills_on_user_id_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.integer  "role_id"
    t.integer  "category_id"
    t.integer  "location_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "avatar"
    t.string   "cv"
    t.string   "professional_title"
    t.index ["category_id"], name: "index_users_on_category_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["location_id"], name: "index_users_on_location_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  create_table "visits", force: :cascade do |t|
    t.integer  "parent_id"
    t.integer  "child_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
