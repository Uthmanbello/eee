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

ActiveRecord::Schema[7.0].define(version: 2023_06_16_222353) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bills", force: :cascade do |t|
    t.string "name"
    t.string "icon"
    t.bigint "author_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_bills_on_author_id"
  end

  create_table "cadets", force: :cascade do |t|
    t.string "name"
    t.string "service"
    t.integer "num"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "level"
  end

  create_table "courses", force: :cascade do |t|
    t.string "code"
    t.string "title"
    t.integer "units"
    t.string "semester"
    t.integer "year"
    t.bigint "option_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["option_id"], name: "index_courses_on_option_id"
  end

  create_table "gradclasses", force: :cascade do |t|
    t.string "name"
    t.string "rc"
    t.bigint "semester_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["semester_id"], name: "index_gradclasses_on_semester_id"
  end

  create_table "gradcourses", force: :cascade do |t|
    t.string "code"
    t.string "title"
    t.integer "units"
    t.bigint "semester_id", null: false
    t.bigint "gradclass_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gradclass_id"], name: "index_gradcourses_on_gradclass_id"
    t.index ["semester_id"], name: "index_gradcourses_on_semester_id"
  end

  create_table "gradstudents", force: :cascade do |t|
    t.string "name"
    t.string "service"
    t.string "level"
    t.integer "num"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.decimal "amount"
    t.bigint "author_id", null: false
    t.bigint "bill_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_items_on_author_id"
    t.index ["bill_id"], name: "index_items_on_bill_id"
  end

  create_table "lecturers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "degrees"
    t.string "appointment"
    t.string "doa"
    t.string "pic"
    t.string "office"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "options", force: :cascade do |t|
    t.string "name"
    t.bigint "program_id", null: false
    t.string "option_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["program_id"], name: "index_options_on_program_id"
  end

  create_table "programs", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.string "establish"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "semesters", force: :cascade do |t|
    t.string "name"
    t.string "session"
    t.string "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bills", "users", column: "author_id"
  add_foreign_key "courses", "options"
  add_foreign_key "gradclasses", "semesters"
  add_foreign_key "gradcourses", "gradclasses"
  add_foreign_key "gradcourses", "semesters"
  add_foreign_key "items", "bills"
  add_foreign_key "items", "users", column: "author_id"
  add_foreign_key "options", "programs"
end
