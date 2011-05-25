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

ActiveRecord::Schema.define(:version => 20110525151000) do

  create_table "comments", :force => true do |t|
    t.string   "author"
    t.string   "author_mail"
    t.string   "author_ip"
    t.datetime "date"
    t.text     "content"
    t.boolean  "approved"
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "options", :force => true do |t|
    t.string   "name"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", :force => true do |t|
    t.datetime "time"
    t.text     "content"
    t.string   "title"
    t.datetime "modified"
    t.integer  "parent"
    t.string   "type"
    t.integer  "comment_count"
    t.integer  "menu_orger"
    t.boolean  "post_status"
    t.boolean  "comment_status"
    t.integer  "user_id"
    t.integer  "views_count"
    t.integer  "likes_count"
    t.integer  "dislikes_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags_relations", :force => true do |t|
    t.integer  "post_id"
    t.integer  "tag_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "pass"
    t.string   "nickname"
    t.string   "email"
    t.date     "registered"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
