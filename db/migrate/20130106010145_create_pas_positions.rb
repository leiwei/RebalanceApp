class CreatePasPositions < ActiveRecord::Migration
  def change
    create_table :pas_positions do |t|
      t.string :position_id
      t.string :acct_id
      t.string :security_id
      t.date :start_date
      t.decimal :average_cost
      t.decimal :quantity
      t.boolean :position_flag
      t.date :as_of_date
      t.decimal :price
      t.decimal :marketvalue
      t.decimal :percentage
      t.string :rep_number
      t.decimal :tolerance
      t.decimal :lower_tolerance
      t.decimal :minimum_trade_amount
      t.boolean :reconciliation_flag
      t.string :transaction_setting_id
      t.integer :lot_method_id
      t.boolean :unmanaged_asset_flag
      t.boolean :exclude_performance_flag
      t.boolean :excluded_holding_flag
      t.integer :holding_status_type
      t.date :import_file_date
      t.boolean :locked_holding_flag
      t.date :last_transaction_date
      t.integer :data_source_type
      t.integer :seq_id
      t.integer :security_type

      t.timestamps
    end
  end
end
