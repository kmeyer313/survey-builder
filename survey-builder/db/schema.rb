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

ActiveRecord::Schema.define(version: 20160519204145) do

  create_table "courses", force: :cascade do |t|
    t.string   "course_title"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "questions", force: :cascade do |t|
    t.text     "question_text"
    t.boolean  "required"
    t.string   "question_type"
    t.integer  "order"
    t.integer  "survey_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "responses", force: :cascade do |t|
    t.text     "response_text"
    t.integer  "question_id"
    t.integer  "student_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "surveys", force: :cascade do |t|
    t.string   "survey_title"
    t.text     "survey_description"
    t.boolean  "submissions_allowed"
    t.boolean  "anonymous_submission"
    t.boolean  "faculty_access"
    t.integer  "question_count"
    t.integer  "course_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.datetime "published_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "account_type"
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
