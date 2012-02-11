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

ActiveRecord::Schema.define(:version => 20120211020604) do

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "companies_stores", :id => false, :force => true do |t|
    t.integer "company_id", :null => false
    t.integer "store_id",   :null => false
  end

  create_table "items", :force => true do |t|
    t.string   "title"
    t.string   "aisle"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "items_stores", :id => false, :force => true do |t|
    t.integer "store_id", :null => false
    t.integer "item_id",  :null => false
  end

  create_table "stores", :force => true do |t|
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

end
