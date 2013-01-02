class CreateSecuritySimilars < ActiveRecord::Migration
  def change
    create_table :security_similars do |t|
      t.string :security_id,:limit => 36,                                  :null => false
      t.string :similar_secid,:limit => 36,                                  :null => false

      t.timestamps
    end
  end
end
