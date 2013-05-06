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

ActiveRecord::Schema.define(:version => 20130506051905) do

  create_table "student_infos", :force => true do |t|
    t.integer  "user_id"
    t.string   "gender"
    t.string   "username"
    t.string   "phone"
    t.string   "grade"
    t.string   "time"
    t.string   "area"
    t.string   "address"
    t.string   "fee"
    t.text     "demand"
    t.boolean  "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "student_infos", ["user_id"], :name => "index_student_infos_on_user_id"

  create_table "subjects", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "subjects_tutor_infos", :force => true do |t|
    t.integer  "subject_id"
    t.integer  "tutor_info_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "teachings", :force => true do |t|
    t.integer  "tutor_info_id"
    t.integer  "subject_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "student_info_id"
  end

  add_index "teachings", ["subject_id"], :name => "index_teachings_on_subject_id"
  add_index "teachings", ["tutor_info_id"], :name => "index_teachings_on_tutor_info_id"

  create_table "tutor_infos", :force => true do |t|
    t.integer  "user_id"
    t.string   "gender"
    t.string   "username"
    t.date     "date_of_birth"
    t.string   "major"
    t.string   "school"
    t.string   "identity"
    t.string   "area"
    t.string   "address"
    t.integer  "phone"
    t.integer  "qq"
    t.string   "fee"
    t.string   "time"
    t.text     "experience"
    t.boolean  "period"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "role"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
