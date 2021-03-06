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

ActiveRecord::Schema.define(:version => 20130518053139) do

  create_table "posts", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.text     "body"
    t.integer  "postparent_id"
    t.string   "postparent_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
  end

  add_index "posts", ["postparent_id", "postparent_type"], :name => "index_posts_on_postparent_id_and_postparent_type"
  add_index "posts", ["slug"], :name => "index_posts_on_slug"

end
