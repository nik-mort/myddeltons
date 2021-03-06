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

ActiveRecord::Schema.define(version: 20181208175920) do

  create_table "attendances", force: :cascade do |t|
    t.integer "member_id"
    t.integer "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_attendances_on_event_id"
    t.index ["member_id"], name: "index_attendances_on_member_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.date "start_date"
    t.date "end_date"
    t.integer "tier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gun_lisences", force: :cascade do |t|
    t.string "classification"
    t.string "number"
    t.date "expiry_date"
    t.integer "member_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id"], name: "index_gun_lisences_on_member_id"
  end

  create_table "members", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.string "contact_number"
    t.string "emergency_contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "medical_notes"
    t.boolean "combatant"
  end

  create_table "memberships", force: :cascade do |t|
    t.integer "member_id"
    t.integer "organisation_id"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id"], name: "index_memberships_on_member_id"
    t.index ["organisation_id"], name: "index_memberships_on_organisation_id"
  end

  create_table "organisations", force: :cascade do |t|
    t.string "name"
    t.decimal "fee"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
