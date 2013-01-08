class PasPosition < ActiveRecord::Base
  include Extensions::UUID
  has_many(:pas_securities,:class_name => "PasSecurity",:foreign_key => "security_id")
  attr_accessible :acct_id, :as_of_date, :average_cost, :data_source_type, :exclude_performance_flag, :excluded_holding_flag, :holding_status_type, :import_file_date, :last_transaction_date, :locked_holding_flag, :lot_method_id, :lower_tolerance, :marketvalue, :minimum_trade_amount, :percentage, :position_flag, :position_id, :price, :quantity, :reconciliation_flag, :rep_number, :security_id, :seq_id, :start_date, :tolerance, :transaction_setting_id, :unmanaged_asset_flag,:security_type
end
