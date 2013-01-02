class RebalanceTrade < ActiveRecord::Base
  attr_accessible :acc_id, :acc_name, :action, :action_currency, :action_id, :cur_mkvalue, :cur_percent, :group_id, :is_washsale, :note, :price_date, :price_decimal, :prop_mkvalue, :prop_percent, :quantity, :security_id, :shares, :tar_percent, :ticker, :trade_id, :trans_fee, :trans_type_code, :user_id, :user_name, :xml_data
end
