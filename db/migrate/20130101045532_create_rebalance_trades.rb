class CreateRebalanceTrades < ActiveRecord::Migration
  def change
    create_table :rebalance_trades do |t|
      t.string :trade_id,   :limit => 36
      t.string :group_id,   :limit => 36
      t.string :action_id,   :limit => 36
      t.string :acc_id,   :limit => 36
      t.string :acc_name
      t.string :security_id,   :limit => 36
      t.decimal :quantity,:precision => 19, :scale => 5
      t.decimal :cur_mkvalue,:precision => 19, :scale => 5
      t.decimal :cur_percent,:precision => 19, :scale => 5
      t.decimal :prop_mkvalue,:precision => 19, :scale => 5
      t.decimal :prop_percent,:precision => 19, :scale => 5
      t.string :action
      t.string :action_currency
      t.decimal :shares
      t.string :trans_type_code
      t.decimal :tar_percent,:precision => 19, :scale => 5
      t.decimal :price,:precision => 19, :scale => 5
      t.datetime :price_date
      t.decimal :trans_fee,:precision => 19, :scale => 5
      t.string :is_washsale
      t.string :note
      t.string :user_id,   :limit => 36
      t.string :user_name
      t.string :ticker
      t.text :xml_data

      t.timestamps
    end
  end
end
