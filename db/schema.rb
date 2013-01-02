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

ActiveRecord::Schema.define(:version => 20130101045532) do

  create_table "rebalance_refs", :id => false, :force => true do |t|
    t.string   "group_id",   :limit => 36, :null => false
    t.string   "acc_id",     :limit => 36, :null => false
    t.string   "client_id",  :limit => 36, :null => false
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "rebalance_trades", :force => true do |t|
    t.string   "trade_id",        :limit => 36
    t.string   "group_id",        :limit => 36
    t.string   "action_id",       :limit => 36
    t.string   "acc_id",          :limit => 36
    t.string   "acc_name"
    t.string   "security_id",     :limit => 36
    t.decimal  "quantity",                      :precision => 19, :scale => 5
    t.decimal  "cur_mkvalue",                   :precision => 19, :scale => 5
    t.decimal  "cur_percent",                   :precision => 19, :scale => 5
    t.decimal  "prop_mkvalue",                  :precision => 19, :scale => 5
    t.decimal  "prop_percent",                  :precision => 19, :scale => 5
    t.string   "action"
    t.string   "action_currency"
    t.decimal  "shares"
    t.string   "trans_type_code"
    t.decimal  "tar_percent",                   :precision => 19, :scale => 5
    t.decimal  "price",                         :precision => 19, :scale => 5
    t.datetime "price_date"
    t.decimal  "trans_fee",                     :precision => 19, :scale => 5
    t.string   "is_washsale"
    t.string   "note"
    t.string   "user_id",         :limit => 36
    t.string   "user_name"
    t.string   "ticker"
    t.text     "xml_data"
    t.datetime "created_at",                                                   :null => false
    t.datetime "updated_at",                                                   :null => false
  end

  create_table "rebalancegroups", :id => false, :force => true do |t|
    t.string   "group_id",                   :limit => 36,                                  :null => false
    t.string   "group_name",                 :limit => 150,                                 :null => false
    t.string   "note",                       :limit => 2000
    t.string   "benchmk_pri",                :limit => 36
    t.string   "benchmk_secd",               :limit => 36
    t.string   "benchmk_terti",              :limit => 36
    t.string   "taraset_id",                 :limit => 36
    t.string   "modelport_id",               :limit => 36
    t.decimal  "cash_need",                                  :precision => 19, :scale => 5
    t.datetime "cash_need_date"
    t.datetime "next_preview_date"
    t.decimal  "short_gainrate",                             :precision => 10, :scale => 5
    t.decimal  "long_gain_rate",                             :precision => 10, :scale => 5
    t.string   "net_capital_yr",             :limit => 20
    t.decimal  "max_capital_gain",                           :precision => 19, :scale => 5
    t.decimal  "max_tournover",                              :precision => 19, :scale => 5
    t.decimal  "max_trade",                                  :precision => 19, :scale => 5
    t.decimal  "max_assets",                                 :precision => 19, :scale => 5
    t.string   "rebalance_type",             :limit => 1
    t.string   "target_asset_allocation_id", :limit => 36
    t.datetime "lst_modify_at"
    t.datetime "create_at"
  end

  create_table "security_similars", :force => true do |t|
    t.string   "security_id",   :limit => 36, :null => false
    t.string   "similar_secid", :limit => 36, :null => false
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

end
