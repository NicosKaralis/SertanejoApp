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

ActiveRecord::Schema.define(version: 20150327132409) do

  create_table "albums", force: :cascade do |t|
    t.string   "nome"
    t.date     "release"
    t.text     "capa"
    t.string   "itunes_store"
    t.string   "play_store"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "cantada_templates", force: :cascade do |t|
    t.text     "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cantadas", force: :cascade do |t|
    t.string   "from_user"
    t.string   "to_user"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "params", force: :cascade do |t|
    t.string   "key"
    t.string   "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "user_id"
    t.text     "content"
    t.integer  "aproved"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "fb_id"
    t.string   "foto_url"
    t.string   "sexo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "nome"
  end

end
