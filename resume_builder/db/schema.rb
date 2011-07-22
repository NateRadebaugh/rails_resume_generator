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

ActiveRecord::Schema.define(:version => 20110720063504) do

  create_table "activities", :force => true do |t|
    t.string   "club_name"
    t.string   "position"
    t.string   "dates"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "computer_skills", :force => true do |t|
    t.string   "skill"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "educations", :force => true do |t|
    t.string   "degree_type"
    t.string   "degree_subject"
    t.string   "school"
    t.string   "school_location"
    t.string   "graduation_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "experiences", :force => true do |t|
    t.string   "role"
    t.string   "company"
    t.string   "location"
    t.string   "dates"
    t.text     "details"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "misc_variables", :force => true do |t|
    t.string   "variable_name"
    t.string   "variable_value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "related_courses", :force => true do |t|
    t.string   "course"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
