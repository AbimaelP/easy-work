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

ActiveRecord::Schema[7.0].define(version: 2023_04_19_010123) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "issues", force: :cascade do |t|
    t.string "cod"
    t.text "details"
    t.bigint "subprojects_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subprojects_id"], name: "index_issues_on_subprojects_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.text "details"
    t.integer "orcament"
    t.bigint "users_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["users_id"], name: "index_projects_on_users_id"
  end

  create_table "subprojects", force: :cascade do |t|
    t.string "title"
    t.text "details"
    t.bigint "projects_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["projects_id"], name: "index_subprojects_on_projects_id"
  end

  create_table "user_controllers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "issues", "subprojects", column: "subprojects_id"
  add_foreign_key "projects", "users", column: "users_id"
  add_foreign_key "subprojects", "projects", column: "projects_id"
end
