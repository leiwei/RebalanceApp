class CreatePasSecurities < ActiveRecord::Migration
  def change
    create_table :pas_securities do |t|
      t.string :security_id
      t.string :symbol
      t.string :cusip
      t.string :isin
      t.string :fund_code
      t.string :security_name
      t.string :description
      t.integer :security_type
      t.integer :security_sub_type
      t.string :currency
      t.string :origcountry_code
      t.string :country_code
      t.int :exchange_id
      t.string :default_currency
      t.integer :price_source
      t.integer :assetclass_id
      t.integer :sector_id
      t.integer :industry_id
      t.integer :reporting1099_category_id
      t.boolean :worthless_flag
      t.date :worthless_start_date
      t.string :notes
      t.integer :status
      t.date :import_file_date
      t.integer :data_source_type
      t.integer :seq_id
      t.float :large_cap
      t.float  :mid_cap
      t.float  :nonus_equity
      t.float  :bond
      t.float  :cash
      t.timestamps
    end
  end
end
