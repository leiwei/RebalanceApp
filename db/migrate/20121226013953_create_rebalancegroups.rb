class CreateRebalancegroups < ActiveRecord::Migration
  def self.up
    create_table(:rebalancegroups,:id => false) do |t|
      t.string    :group_id,             :limit => 36, :primary => true,:null => false
      t.string    :group_name,           :limit => 150,:null => true
      t.string    :note,                 :limit => 2000,:null => false
    end
  end

  def self.down
    drop_table :rebalancegroups
  end
end
