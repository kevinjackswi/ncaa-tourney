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

ActiveRecord::Schema.define(version: 20160817022912) do

  create_table "brackets", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "round_of_tourny"
    t.boolean  "active"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "participants", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "short_name"
    t.string   "phone_number"
    t.string   "email"
    t.string   "image_file"
    t.integer  "points"
    t.integer  "ranking"
    t.boolean  "playing"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "bracket_id"
    t.index ["bracket_id"], name: "fk_rails_bc4fe819f6", using: :btree
  end

  create_table "regions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "region"
    t.string   "city"
    t.string   "short_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "school_name"
    t.string   "short_name"
    t.string   "image_file"
    t.string   "conference"
    t.string   "mascot"
    t.integer  "seed"
    t.string   "division"
    t.boolean  "playing"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "participant_id"
    t.index ["participant_id"], name: "fk_rails_5a634b9f4b", using: :btree
  end

  add_foreign_key "participants", "brackets"
  add_foreign_key "teams", "participants"
end
