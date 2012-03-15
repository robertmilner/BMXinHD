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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120315175055) do

  create_table "videos", :force => true do |t|
    t.string   "vendor_type"
    t.integer  "vendor_id"
    t.string   "title"
    t.string   "description"
    t.string   "url"
    t.string   "upload_date"
    t.string   "mobile_url"
    t.string   "thumbnail_small"
    t.string   "thumbnail_medium"
    t.string   "thumbnail_large"
    t.string   "user_name"
    t.string   "user_url"
    t.string   "user_portrait_small"
    t.string   "user_portrait_medium"
    t.string   "user_portrait_large"
    t.string   "user_portrait_huge"
    t.integer  "stats_number_of_likes"
    t.integer  "stats_number_of_plays"
    t.integer  "stats_number_of_comments"
    t.integer  "duration"
    t.integer  "width"
    t.integer  "height"
    t.string   "tags"
    t.string   "embed_privacy"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

end
