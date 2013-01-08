class RebalanceRef < ActiveRecord::Base
  belongs_to(:rebalancegroup,:class_name =>"Rebalancegroup",:foreign_key => "group_id")
  belongs_to(:pas_account,:class_name =>"PasAccount",:foreign_key => "acc_id")
  attr_accessible :acc_id, :client_id, :group_id
end
