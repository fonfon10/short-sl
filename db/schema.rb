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

ActiveRecord::Schema.define(version: 20170227053132) do

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "company"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dashboards", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "engineers", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "company_id"
    t.integer  "user_id"
  end

  create_table "patrons", force: :cascade do |t|
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "type"
    t.string   "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer  "invitation_limit"
    t.string   "invited_by_type"
    t.integer  "invited_by_id"
    t.integer  "invitations_count",      default: 0
    t.index ["confirmation_token"], name: "index_patrons_on_confirmation_token", unique: true
    t.index ["email"], name: "index_patrons_on_email", unique: true
    t.index ["invitation_token"], name: "index_patrons_on_invitation_token", unique: true
    t.index ["invitations_count"], name: "index_patrons_on_invitations_count"
    t.index ["invited_by_id"], name: "index_patrons_on_invited_by_id"
    t.index ["reset_password_token"], name: "index_patrons_on_reset_password_token", unique: true
  end

  create_table "shortened_urls", force: :cascade do |t|
    t.integer  "owner_id"
    t.string   "owner_type",  limit: 20
    t.text     "url",                                null: false
    t.string   "unique_key",  limit: 10,             null: false
    t.integer  "use_count",              default: 0, null: false
    t.datetime "expires_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "engineer_id"
    t.index ["owner_id", "owner_type"], name: "index_shortened_urls_on_owner_id_and_owner_type"
    t.index ["unique_key"], name: "index_shortened_urls_on_unique_key", unique: true
    t.index ["url"], name: "index_shortened_urls_on_url"
  end

end
