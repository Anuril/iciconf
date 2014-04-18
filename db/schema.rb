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

ActiveRecord::Schema.define(version: 20140418184715) do

  create_table "hosts", force: true do |t|
    t.string   "hostname"
    t.string   "alias"
    t.string   "display_name"
    t.string   "address"
    t.string   "parents"
    t.string   "hostgroups"
    t.string   "check_command"
    t.string   "check_period"
    t.integer  "notification_interval"
    t.string   "notification_period"
    t.timestamps 
  end

  create_table "users", force: true do |t|
    t.string   "prename"
    t.string   "surname"
    t.string   "email"
    t.string   "password"
    t.string   "salt"
    t.timestamps
  end

end
