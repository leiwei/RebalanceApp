class PasSecurity < ActiveRecord::Base
  include Extensions::UUID
  belongs_to(:pas_position,:class_name =>"PasPosition",:foreign_key => "security_id")
  attr_accessible :assetclass_id, :country_code, :currency, :cusip, :data_source_type, :default_currency, :description, :exchange_id, :fund_code, :import_file_date, :industry_id, :isin, :notes, :origcountry_code, :price_source, :reporting1099_category_id, :sector_id, :security_id, :security_name, :security_sub_type, :security_type, :seq_id, :status, :symbol, :worthless_flag, :worthless_start_date,:large_cap,:mid_cap,:nonus_equity,:bond,:cash
end
