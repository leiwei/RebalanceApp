
class Rebalancegroup < ActiveRecord::Base
  # attr_accessible :title, :body
  include Extensions::UUID
  #include UUIDHelper
  attr_accessible :group_id,:group_name,:note,:benchmk_pri,:benchmk_secd,:benchmk_terti,:taraset_id,:modelport_id,:cash_need,:cash_need_date,:next_preview_date,:short_gainrate,
                  :long_gain_rate,:short_gainrate,:net_capital_yr,:max_capital_gain,:max_tournover,:max_trade,:rebalance_type,:target_asset_allocation_id ,:max_assets

end
