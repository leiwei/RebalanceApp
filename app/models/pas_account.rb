class PasAccount < ActiveRecord::Base
  include Extensions::UUID
  has_one(:rebalance_refs,:class_name=>"RebalanceRef", :foreign_key=>"acc_id")
  has_many(:pas_positions,:class_name => "PasPosition",:foreign_key => "acct_id")
  attr_accessible :account_funding_date, :acct_id, :acct_name, :acct_number, :acct_type, :aggregateaccount_flag, :billing_start_date, :close_date, :currency, :custodian_id, :data_source_type, :federal_taxable_flag, :fee_calcbase_type, :import_file_date, :investment_company_id, :investment_strategy_type, :last_billing_date, :open_date, :orig_acct_type, :performance_start_date, :position_asof_date, :previous_owner_name, :primary_master_account_id, :reference_id, :relationship_to_prevowner_type, :rep_number, :secondary_master_account_id, :source_id, :start_date, :state_taxable_flag, :termination_notification_date, :termination_reason, :use_firsttradedate_flag, :view_id
end
