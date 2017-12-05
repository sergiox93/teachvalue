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

ActiveRecord::Schema.define(version: 20171203045624) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cours_prs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "course_id"
    t.bigint "professor_id"
    t.index ["course_id"], name: "index_cours_prs_on_course_id"
    t.index ["professor_id"], name: "index_cours_prs_on_professor_id"
  end

  create_table "cours_sts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "student_id"
    t.bigint "course_id"
    t.index ["course_id"], name: "index_cours_sts_on_course_id"
    t.index ["student_id"], name: "index_cours_sts_on_student_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.integer "semestre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "code"
  end

  create_table "perros", force: :cascade do |t|
    t.string "nombre"
    t.integer "edad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "professors", force: :cascade do |t|
    t.string "name"
    t.string "level"
    t.string "user"
    t.string "password"
    t.integer "age"
    t.string "correo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.string "comment"
    t.decimal "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "professor_id"
    t.bigint "student_id"
    t.index ["professor_id"], name: "index_ratings_on_professor_id"
    t.index ["student_id"], name: "index_ratings_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "user"
    t.string "password_digest"
    t.integer "st_id"
    t.integer "edad"
    t.string "correo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cours_prs", "courses"
  add_foreign_key "cours_prs", "professors"
  add_foreign_key "cours_sts", "courses"
  add_foreign_key "cours_sts", "students"
  add_foreign_key "ratings", "professors"
  add_foreign_key "ratings", "students"
end
