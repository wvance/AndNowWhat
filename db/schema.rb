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

ActiveRecord::Schema.define(version: 20160307024153) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applications", force: :cascade do |t|
    t.integer  "opportunity_id"
    t.integer  "employee_id"
    t.string   "external_url"
    t.string   "image"
    t.text     "description"
    t.string   "status"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "applications", ["employee_id"], name: "index_applications_on_employee_id", using: :btree
  add_index "applications", ["opportunity_id"], name: "index_applications_on_opportunity_id", using: :btree

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "type"
    t.string   "external_url"
    t.string   "image"
    t.string   "status"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "username",               default: "", null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "image"
    t.string   "resume_link"
    t.string   "type"
    t.string   "start_date"
    t.string   "end_date"
    t.text     "employee_description"
    t.string   "note"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "employees", ["email"], name: "index_employees_on_email", unique: true, using: :btree
  add_index "employees", ["reset_password_token"], name: "index_employees_on_reset_password_token", unique: true, using: :btree

  create_table "opportunities", force: :cascade do |t|
    t.integer  "company_id"
    t.string   "title"
    t.string   "external_url"
    t.string   "image"
    t.string   "type"
    t.string   "status"
    t.text     "description"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "opportunities", ["company_id"], name: "index_opportunities_on_company_id", using: :btree

  add_foreign_key "applications", "employees"
  add_foreign_key "applications", "opportunities"
  add_foreign_key "opportunities", "companies"
end
