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

ActiveRecord::Schema.define(:version => 20121226032919) do

  create_table "rebalancegroups", :id => false, :force => true do |t|
    t.string   "group_id",                   :limit => 36,                                  :null => false
    t.string   "group_name",                 :limit => 150,                                 :null => false
    t.string   "note",                       :limit => 2000
    t.string   "benchmk_pri",                :limit => nil
    t.string   "benchmk_secd",               :limit => nil
    t.string   "benchmk_terti",              :limit => nil
    t.string   "taraset_id",                 :limit => nil
    t.string   "modelport_id",               :limit => nil
    t.decimal  "cash_need",                                  :precision => 19, :scale => 5
    t.decimal  "short_gainrate",                             :precision => 10, :scale => 5
    t.decimal  "long_gain_rate",                             :precision => 10, :scale => 5
    t.decimal  "net_capital_gain",                           :precision => 10, :scale => 5
    t.string   "net_capital_yr",             :limit => 20
    t.decimal  "max_capital_gain",                           :precision => 19, :scale => 5
    t.decimal  "max_tournover",                              :precision => 19, :scale => 5
    t.decimal  "max_trade",                                  :precision => 19, :scale => 5
    t.decimal  "max_assets",                                 :precision => 19, :scale => 5
    t.string   "rebalance_type",             :limit => 1
    t.string   "target_asset_allocation_id", :limit => nil
    t.datetime "cash_need_date"
    t.datetime "next_preview_date"
    t.datetime "lst_modify_at",                                                             :null => false
    t.datetime "create_at",                                                                 :null => false
  end

end
