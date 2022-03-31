# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_02_17_104833) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "Comment", force: :cascade do |t|
    t.bigint "User_id", null: false
    t.bigint "Post_id", null: false
    t.text "Text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Post_id"], name: "index_Comment_on_Post_id"
    t.index ["User_id"], name: "index_Comment_on_User_id"
  end

  create_table "Like", force: :cascade do |t|
    t.bigint "User_id", null: false
    t.bigint "Post_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Post_id"], name: "index_Like_on_Post_id"
    t.index ["User_id"], name: "index_Like_on_User_id"
  end

  create_table "Post", force: :cascade do |t|
    t.bigint "User_id", null: false
    t.string "Title"
    t.string "Text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "Comments_Counter", default: 0, null: false
    t.integer "Likes_Counter", default: 0, null: false
    t.index ["User_id"], name: "index_Post_on_User_id"
  end

  create_table "User", force: :cascade do |t|
    t.string "Name"
    t.string "Photo"
    t.text "Bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "PostsCounter", default: 0, null: false
  end

end
