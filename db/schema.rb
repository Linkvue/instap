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

ActiveRecord::Schema.define(version: 20180716094829) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"
  enable_extension "pgcrypto"

  create_table "categories", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "title"
    t.text "details"
    t.datetime "blocked_at"
    t.bigint "blocker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["blocker_id"], name: "index_categories_on_blocker_id"
  end

  create_table "comments", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.uuid "author_id"
    t.uuid "post_id"
    t.string "referer_type"
    t.uuid "referer_id"
    t.datetime "published_at"
    t.datetime "modified_at"
    t.datetime "blocked_at"
    t.bigint "blocker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_comments_on_author_id"
    t.index ["blocker_id"], name: "index_comments_on_blocker_id"
    t.index ["post_id"], name: "index_comments_on_post_id"
    t.index ["referer_type", "referer_id"], name: "index_comments_on_referer_type_and_referer_id"
  end

  create_table "excerpts", force: :cascade do |t|
    t.uuid "reader_id"
    t.uuid "post_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_excerpts_on_post_id"
    t.index ["reader_id"], name: "index_excerpts_on_reader_id"
  end

  create_table "favorates", force: :cascade do |t|
    t.uuid "user_id"
    t.string "likable_type"
    t.uuid "likable_id"
    t.integer "likes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["likable_type", "likable_id"], name: "index_favorates_on_likable_type_and_likable_id"
    t.index ["user_id"], name: "index_favorates_on_user_id"
  end

  create_table "histories", force: :cascade do |t|
    t.uuid "reader_id"
    t.uuid "post_id"
    t.integer "lineno"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_histories_on_post_id"
    t.index ["reader_id"], name: "index_histories_on_reader_id"
  end

  create_table "posts", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "category_id"
    t.uuid "author_id"
    t.string "title"
    t.text "content"
    t.datetime "published_at"
    t.datetime "modified_at"
    t.datetime "blocked_at"
    t.bigint "blocker_id"
    t.string "tags", array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_posts_on_author_id"
    t.index ["blocker_id"], name: "index_posts_on_blocker_id"
    t.index ["category_id"], name: "index_posts_on_category_id"
  end

  create_table "users", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.string "avatar_path"
    t.string "alipay_id"
    t.string "tencent_id"
    t.datetime "blocked_at"
    t.bigint "blocker_id"
    t.string "roles", array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.index ["blocker_id"], name: "index_users_on_blocker_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["name"], name: "index_users_on_name"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  add_foreign_key "excerpts", "posts"
  add_foreign_key "excerpts", "users", column: "reader_id"
  add_foreign_key "favorates", "users"
  add_foreign_key "histories", "posts"
  add_foreign_key "histories", "users", column: "reader_id"
end
