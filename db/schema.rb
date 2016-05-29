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

ActiveRecord::Schema.define(version: 20160529171357) do

  create_table "fixtures", force: :cascade do |t|
    t.date     "date"
    t.integer  "team_id"
    t.string   "opposition"
    t.string   "match_type"
    t.string   "venue"
    t.time     "start_time"
    t.string   "meet_info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "fixtures", ["team_id"], name: "index_fixtures_on_team_id"

  create_table "members", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.string   "forename"
    t.string   "surname"
    t.string   "nickname"
    t.string   "gender"
    t.date     "date_of_birth"
    t.string   "email"
    t.string   "mobile"
    t.string   "about_me"
    t.string   "playing_position"
    t.string   "team"
    t.string   "shirt_number"
    t.string   "availability"
    t.integer  "match_count"
    t.integer  "goal_count"
    t.integer  "man_of_the_match_count"
    t.string   "membership_status"
    t.string   "user_permissions"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "moderators", force: :cascade do |t|
    t.string   "username"
    t.string   "forename"
    t.string   "surname"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "results", force: :cascade do |t|
    t.string   "teamsheet"
    t.string   "score"
    t.string   "type"
    t.integer  "fixture_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "results", ["fixture_id"], name: "index_results_on_fixture_id"

  create_table "settings", force: :cascade do |t|
    t.string   "club_name"
    t.string   "domain_name"
    t.string   "seo_keywords"
    t.string   "club_description"
    t.string   "club_email"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "team_name"
    t.string   "captain"
    t.string   "vice_captain"
    t.string   "coach"
    t.string   "gender"
    t.integer  "player_count"
    t.integer  "reserve_count"
    t.integer  "members_id"
    t.string   "team_description"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "team_photo_file_name"
    t.string   "team_photo_content_type"
    t.integer  "team_photo_file_size"
    t.datetime "team_photo_updated_at"
  end

  add_index "teams", ["members_id"], name: "index_teams_on_members_id"

end
