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

ActiveRecord::Schema.define(version: 20150727121202) do

  create_table "bankaccount", primary_key: "ID", force: true do |t|
    t.integer   "EmployeeID",                             null: false
    t.string    "BankName",       limit: 50, default: "", null: false
    t.string    "AccountNumber",  limit: 50, default: "", null: false
    t.string    "AccountType",    limit: 20, default: "", null: false
    t.integer   "DataRowVersion",            default: 0,  null: false
    t.integer   "IsActive",                  default: 0,  null: false
    t.timestamp "Created",                                null: false
    t.datetime  "LastUpdated"
  end

  create_table "certification", primary_key: "ID", force: true do |t|
    t.integer   "EmployeeID",                             null: false
    t.string    "Title",          limit: 20, default: "", null: false
    t.string    "Language",       limit: 20
    t.string    "Domain",         limit: 20
    t.string    "Level",          limit: 20
    t.string    "Status",         limit: 10
    t.integer   "DataRowVersion",            default: 0,  null: false
    t.integer   "IsActive",                  default: 0,  null: false
    t.timestamp "Created",                                null: false
    t.datetime  "LastUpdated"
  end

  create_table "contact", primary_key: "ID", force: true do |t|
    t.integer   "EmployeeID",                               null: false
    t.string    "CurrentAddress",   limit: 50, default: "", null: false
    t.string    "CurrentPinCode",   limit: 10, default: "", null: false
    t.string    "CurrentCity",      limit: 20, default: "", null: false
    t.string    "CurrentState",     limit: 20, default: "", null: false
    t.string    "PermanentAddress", limit: 50, default: "", null: false
    t.string    "PermanentPinCode", limit: 10, default: "", null: false
    t.string    "PermanentCity",    limit: 20, default: "", null: false
    t.string    "PermanentState",   limit: 20, default: "", null: false
    t.integer   "DataRowVersion",              default: 0,  null: false
    t.integer   "IsActive",                    default: 0,  null: false
    t.timestamp "Created",                                  null: false
    t.datetime  "LastUpdated"
  end

  create_table "dependency", primary_key: "ID", force: true do |t|
    t.integer   "EmployeeID",                             null: false
    t.string    "FirstName",      limit: 50, default: "", null: false
    t.string    "MiddleName",     limit: 50
    t.string    "LastName",       limit: 50
    t.integer   "Gender",                    default: 0,  null: false
    t.string    "Relation",       limit: 10, default: "", null: false
    t.datetime  "DateOfBirth",                            null: false
    t.integer   "DataRowVersion",            default: 0,  null: false
    t.integer   "IsActive",                  default: 0,  null: false
    t.timestamp "Created",                                null: false
    t.datetime  "LastUpdated"
  end

  create_table "education", primary_key: "ID", force: true do |t|
    t.integer   "EmployeeID",                            null: false
    t.float     "Level",          limit: 24
    t.integer   "JoiningYear"
    t.integer   "CompletionYear"
    t.string    "Score",          limit: 10
    t.integer   "AttachementId"
    t.integer   "DataRowVersion",            default: 0, null: false
    t.integer   "IsActive",                  default: 0, null: false
    t.timestamp "Created",                               null: false
    t.datetime  "LastUpdated"
  end

  create_table "emergencycontact", primary_key: "ID", force: true do |t|
    t.integer   "EmployeeID",                             null: false
    t.string    "Name",           limit: 50, default: "", null: false
    t.string    "Relation",       limit: 10, default: "", null: false
    t.string    "PersonalPhNo",   limit: 20
    t.string    "WorkPhNo",       limit: 20, default: "", null: false
    t.string    "Address",        limit: 50, default: "", null: false
    t.string    "PinCode",        limit: 10, default: "", null: false
    t.string    "City",           limit: 20, default: "", null: false
    t.string    "State",          limit: 20, default: "", null: false
    t.integer   "DataRowVersion",            default: 0,  null: false
    t.integer   "IsActive",                  default: 0,  null: false
    t.timestamp "Created",                                null: false
    t.datetime  "LastUpdated"
  end

  create_table "employees", primary_key: "ID", force: true do |t|
    t.string    "EmployeeID",     limit: 20, default: "", null: false
    t.string    "FirstName",      limit: 50, default: "", null: false
    t.string    "MiddleName",     limit: 50
    t.string    "LastName",       limit: 50, default: "", null: false
    t.integer   "Gender",                                 null: false
    t.string    "Nationality",    limit: 15, default: "", null: false
    t.integer   "MaritalStatus",             default: 0,  null: false
    t.date      "DateOfBirth",                            null: false
    t.string    "PAN",            limit: 20
    t.string    "AadhaarCard",    limit: 50
    t.string    "PassportNo",     limit: 20
    t.integer   "DataRowVersion",            default: 0,  null: false
    t.integer   "IsActive",                  default: 0,  null: false
    t.timestamp "Created",                                null: false
    t.datetime  "LastUpdated"
  end

  create_table "goals", primary_key: "ID", force: true do |t|
    t.string    "Description"
    t.integer   "Status"
    t.string    "Remarks"
    t.datetime  "Created"
    t.datetime  "Closed"
    t.timestamp "LastUpdated"
    t.integer   "IsActive",    default: 0, null: false
    t.integer   "CreatedBy"
    t.integer   "AssignedTo"
    t.integer   "IsLongTerm"
  end

  create_table "job", primary_key: "ID", force: true do |t|
    t.integer   "EmployeeID",                             null: false
    t.string    "JobTitle",       limit: 20, default: "", null: false
    t.integer   "EmployeeStatus",            default: 0,  null: false
    t.integer   "JobCatagoryID"
    t.datetime  "DateOfJoining",                          null: false
    t.string    "Location",       limit: 20
    t.integer   "AttachmentID"
    t.integer   "DataRowVersion",            default: 0,  null: false
    t.integer   "IsActive",                  default: 0,  null: false
    t.timestamp "Created",                                null: false
    t.datetime  "LastUpdated"
  end

  create_table "language", primary_key: "ID", force: true do |t|
    t.integer   "EmployeeID",                            null: false
    t.string    "KnownLanguage",  limit: 20
    t.string    "CanSpeak",       limit: 1
    t.string    "CanRead",        limit: 1
    t.string    "CanWrite",       limit: 1
    t.integer   "DataRowVersion",            default: 0, null: false
    t.integer   "IsActive",                  default: 0, null: false
    t.timestamp "Created",                               null: false
    t.datetime  "LastUpdated"
  end

  create_table "qualification", primary_key: "ID", force: true do |t|
    t.integer   "EmployeeID",                              null: false
    t.float     "WorkExperience",  limit: 24
    t.string    "CompanyName",     limit: 20, default: "", null: false
    t.string    "JobTitle",        limit: 20
    t.datetime  "DateOfJoining"
    t.datetime  "DateOfRelieving"
    t.integer   "AttachementId"
    t.integer   "DataRowVersion",             default: 0,  null: false
    t.integer   "IsActive",                   default: 0,  null: false
    t.timestamp "Created",                                 null: false
    t.datetime  "LastUpdated"
  end

  create_table "reporting", primary_key: "ID", force: true do |t|
    t.integer   "EmployeeID",                  null: false
    t.integer   "ReportTo"
    t.integer   "ReportingMethod", default: 0, null: false
    t.integer   "DataRowVersion",  default: 0, null: false
    t.integer   "IsActive",        default: 0, null: false
    t.timestamp "Created",                     null: false
    t.datetime  "LastUpdated"
  end

  create_table "reportings", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skills", primary_key: "ID", force: true do |t|
    t.integer   "EmployeeID",                     null: false
    t.integer   "YearsOfExperience"
    t.integer   "Score",              default: 0, null: false
    t.integer   "PracticalKnowledge", default: 0, null: false
    t.integer   "AttachementId"
    t.integer   "DataRowVersion",     default: 0, null: false
    t.integer   "IsActive",           default: 0, null: false
    t.timestamp "Created",                        null: false
    t.datetime  "LastUpdated"
  end

  create_table "students", force: true do |t|
    t.string   "Name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
