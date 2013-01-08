class CreatePasAccounts < ActiveRecord::Migration
  def change
    create_table :pas_accounts do |t|
      t.string :acct_id
      t.string :currency
      t.integer :acct_type
      t.string :acct_name
      t.string :acct_number
      t.date :open_date
      t.date :start_date
      t.date :performance_start_date
      t.date :close_date
      t.date :position_asof_date
      t.date :account_funding_date
      t.integer :investment_strategy_type
      t.string :investment_company_id
      t.string :custodian_id
      t.integer :source_id
      t.string :rep_number
      t.string :reference_id
      t.boolean :federal_taxable_flag
      t.boolean :state_taxable_flag
      t.integer :view_id
      t.integer :use_firsttradedate_flag
      t.date :termination_notification_date
      t.string :termination_reason
      t.boolean :aggregateaccount_flag
      t.string :primary_master_account_id
      t.string :secondary_master_account_id
      t.date :billing_start_date
      t.date :last_billing_date
      t.integer :fee_calcbase_type
      t.integer :relationship_to_prevowner_type
      t.string :previous_owner_name
      t.integer :orig_acct_type
      t.date :import_file_date
      t.integer :data_source_type

      t.timestamps
    end
  end
end
