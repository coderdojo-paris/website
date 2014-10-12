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

ActiveRecord::Schema.define(version: 20141012164359) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: true do |t|
    t.datetime "start"
    t.datetime "end"
    t.integer  "venue_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "signup_link"
  end

  add_index "events", ["venue_id"], name: "index_events_on_venue_id", using: :btree

  create_table "faq_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "faqs", force: true do |t|
    t.string   "title_en"
    t.string   "title_fr"
    t.text     "content_en"
    t.text     "content_fr"
    t.integer  "faq_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position"
  end

  add_index "faqs", ["faq_type_id"], name: "index_faqs_on_faq_type_id", using: :btree

  create_table "resource_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resources", force: true do |t|
    t.integer  "resource_type_id"
    t.string   "title_en"
    t.text     "description_en"
    t.string   "resource_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title_fr"
    t.text     "description_fr"
    t.string   "button_en"
    t.string   "button_fr"
    t.integer  "position"
  end

  add_index "resources", ["resource_type_id"], name: "index_resources_on_resource_type_id", using: :btree

  create_table "venues", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "postcode"
    t.string   "city"
    t.string   "country"
    t.float    "latitude"
    t.float    "longtitude"
    t.string   "googlemaps_url"
    t.string   "company_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
