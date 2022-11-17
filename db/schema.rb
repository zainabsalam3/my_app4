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

ActiveRecord::Schema[7.0].define(version: 2022_11_16_220031) do
  create_table "books", force: :cascade do |t|
    t.integer "university_id"
    t.string "title", null: false
    t.string "author", null: false
    t.string "publisher", null: false
    t.string "genre", null: false
    t.string "year", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author"], name: "index_books_on_author"
    t.index ["genre"], name: "index_books_on_genre"
    t.index ["publisher"], name: "index_books_on_publisher"
    t.index ["title"], name: "index_books_on_title"
    t.index ["university_id"], name: "index_books_on_university_id"
    t.index ["year"], name: "index_books_on_year"
  end

  create_table "educators", force: :cascade do |t|
    t.string "degree", null: false
    t.string "course_name", null: false
    t.string "subject", null: false
    t.string "campus", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campus"], name: "index_educators_on_campus"
    t.index ["course_name"], name: "index_educators_on_course_name"
    t.index ["degree"], name: "index_educators_on_degree"
    t.index ["subject"], name: "index_educators_on_subject"
  end

  create_table "universities", force: :cascade do |t|
    t.integer "educator_id"
    t.string "name", null: false
    t.string "phone", null: false
    t.string "Address", null: false
    t.string "prefix", null: false
    t.string "suffix", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Address"], name: "index_universities_on_Address"
    t.index ["name"], name: "index_universities_on_name"
    t.index ["phone"], name: "index_universities_on_phone"
    t.index ["prefix"], name: "index_universities_on_prefix"
    t.index ["suffix"], name: "index_universities_on_suffix"
  end

  add_foreign_key "books", "universities"
end
