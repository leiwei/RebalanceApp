class CreateRebalanceRefs < ActiveRecord::Migration
  def change
    create_table :rebalance_refs do |t|
      t.string :group_id,   :limit => 36,                                  :null => false
      t.string :acc_id, :limit => 36,                                  :null => false
      t.string :client_id, :limit => 36,                                  :null => false
      t.text :comment
      t.timestamps
    end
  end
end
