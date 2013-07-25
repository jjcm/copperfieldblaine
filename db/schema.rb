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

ActiveRecord::Schema.define(:version => 20130725181340) do

  create_table "answers", :force => true do |t|
    t.integer  "question_id"
    t.string   "answer"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "inference_clarification_weights", :force => true do |t|
    t.integer  "inference_id"
    t.integer  "weight"
    t.integer  "inference_clarification_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "inference_clarifications", :force => true do |t|
    t.string   "clarification"
    t.integer  "inference_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "truth_weight"
  end

  create_table "inference_weights", :force => true do |t|
    t.integer  "answer_id"
    t.integer  "inference_id"
    t.integer  "weight"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "inferences", :force => true do |t|
    t.string   "inference"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "lifestyle_cue_inference_clarification_connectors", :force => true do |t|
    t.integer  "lifestyle_cue_id"
    t.integer  "inference_clarification_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "lifestyle_cue_inference_connectors", :force => true do |t|
    t.integer  "lifestyle_cue_id"
    t.integer  "inference_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "lifestyle_cues", :force => true do |t|
    t.string   "cue"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "lifestyle_subgenre_inference_clarification_connectors", :force => true do |t|
    t.integer  "lifestyle_subgenre_id"
    t.integer  "inference_clarification_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "lifestyle_subgenre_inference_connectors", :force => true do |t|
    t.integer  "lifestyle_subgenre_id"
    t.integer  "inference_id"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "lifestyle_subgenres", :force => true do |t|
    t.string   "genre"
    t.integer  "lifestyle_cue_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "questions", :force => true do |t|
    t.string   "question"
    t.integer  "survey_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "surveys", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "user_answers", :force => true do |t|
    t.integer  "user_id"
    t.integer  "answer_id"
    t.integer  "survey_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "user_inference_responses", :force => true do |t|
    t.integer  "inference_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.integer  "user_id"
    t.integer  "inference_clarification_id"
    t.boolean  "response"
    t.boolean  "followup"
  end

  create_table "user_inference_weights", :force => true do |t|
    t.integer  "user_id"
    t.integer  "inference_id"
    t.integer  "weight"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.boolean  "followup"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.boolean  "admin",                  :default => false
    t.integer  "age"
    t.boolean  "gender"
  end

  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
