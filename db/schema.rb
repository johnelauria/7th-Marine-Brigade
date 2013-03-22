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

ActiveRecord::Schema.define(:version => 20130322051115) do

  create_table "brothers_and_sisters", :force => true do |t|
    t.integer  "family_history_id"
    t.string   "name"
    t.integer  "age"
    t.text     "address"
    t.string   "occupation"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "children", :force => true do |t|
    t.string   "name"
    t.date     "birth_date"
    t.text     "address"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "marital_history_id"
  end

  create_table "educational_backgrounds", :force => true do |t|
    t.string   "elementary_location"
    t.date     "elementary_date_of_attendance1"
    t.date     "elementary_date_of_attendance2"
    t.integer  "elementary_year_graduate"
    t.string   "high_school_location"
    t.date     "high_school_date_of_attendance1"
    t.date     "high_school_date_of_attendance2"
    t.integer  "high_school_year_graduate"
    t.string   "college_location"
    t.date     "college_date_of_attendance1"
    t.date     "college_date_of_attendance2"
    t.integer  "college_year_graduate"
    t.string   "post_graduate_location"
    t.date     "post_graduate_date_of_attendance1"
    t.date     "post_graduate_date_of_attendance2"
    t.integer  "post_graduate_year_graduate"
    t.string   "other_location"
    t.date     "other_date_of_attendance1"
    t.date     "other_date_of_attendance2"
    t.string   "other_year_graduate"
    t.text     "civil_service_eligibility"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.integer  "personal_detail_id"
  end

  create_table "family_histories", :force => true do |t|
    t.string   "father_name"
    t.date     "father_date_of_birth"
    t.string   "father_place_of_birth"
    t.text     "father_address"
    t.string   "father_occupation"
    t.string   "father_place_of_employment"
    t.string   "father_citizenship"
    t.boolean  "father_naturalized"
    t.date     "father_naturalized_date"
    t.string   "father_naturalized_place"
    t.string   "mother_name"
    t.date     "mother_date_of_birth"
    t.string   "mother_place_of_birth"
    t.text     "mother_address"
    t.string   "mother_occupation"
    t.string   "mother_place_of_employment"
    t.string   "mother_citizenship"
    t.boolean  "mother_naturalized"
    t.date     "mother_naturalized_date"
    t.string   "mother_naturalized_place"
    t.string   "father_in_law_name"
    t.date     "father_in_law_birth_date"
    t.string   "father_in_law_place_of_birth"
    t.text     "father_in_law_address"
    t.string   "father_in_law_occupation"
    t.string   "father_in_law_place_of_employment"
    t.string   "father_in_law_citizenship"
    t.boolean  "father_in_law_naturalized"
    t.date     "father_in_law_naturalized_date"
    t.string   "father_in_law_naturalized_place"
    t.string   "mother_in_law_name"
    t.date     "mother_in_law_birth_date"
    t.string   "mother_in_law_place_of_birth"
    t.text     "mother_in_law_address"
    t.string   "mother_in_law_occupation"
    t.string   "mother_in_law_place_of_employment"
    t.string   "mother_in_law_citizenship"
    t.boolean  "mother_in_law_naturalized"
    t.date     "mother_in_law_naturalized_date"
    t.string   "mother_in_law_naturalized_place"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.integer  "personal_detail_id"
  end

  create_table "important_unit_assignments", :force => true do |t|
    t.integer  "military_history_id"
    t.string   "unit"
    t.date     "date1"
    t.date     "date2"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "marital_histories", :force => true do |t|
    t.string   "marital_status"
    t.string   "name_of_spouse"
    t.date     "date_of_marriage"
    t.text     "place_of_marriage"
    t.date     "birth_date"
    t.text     "birth_place"
    t.string   "occupation"
    t.text     "place_of_employment"
    t.string   "name"
    t.date     "birthdate"
    t.text     "address"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.integer  "personal_detail_id"
  end

  create_table "military_histories", :force => true do |t|
    t.date     "date_of_cad"
    t.date     "date_commission"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "personal_detail_id"
  end

  create_table "military_schools", :force => true do |t|
    t.integer  "military_history_id"
    t.string   "name_of_school"
    t.text     "location"
    t.date     "date_of_attendance"
    t.string   "nature_of_training"
    t.string   "rating"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "personal_characteristics", :force => true do |t|
    t.string   "sex"
    t.integer  "age"
    t.string   "height"
    t.string   "weight"
    t.string   "build"
    t.string   "color_of_eyes"
    t.string   "color_of_hair"
    t.string   "scars_or_marks"
    t.string   "state_of_health"
    t.string   "physical_or_mental_defect"
    t.string   "recent_serious_illness"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.integer  "personal_detail_id"
  end

  create_table "personal_details", :force => true do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "rank"
    t.string   "AFPSN"
    t.string   "BR_SVC"
    t.string   "assignment"
    t.string   "duty_address"
    t.string   "telephone"
    t.string   "home_address"
    t.date     "birthdate"
    t.string   "place_of_birth"
    t.string   "change_in_name"
    t.string   "nationality"
    t.integer  "tin"
    t.integer  "national_reg_cards_no"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "place_of_residences", :force => true do |t|
    t.date     "starting_date"
    t.date     "date_left"
    t.text     "complete_address"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "personal_detail_id"
  end

  create_table "received_military_awards", :force => true do |t|
    t.integer  "military_history_id"
    t.text     "awards"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

end
