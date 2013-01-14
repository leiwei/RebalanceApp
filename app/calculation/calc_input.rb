require "rexml/document"
require File.dirname(__FILE__) + '/assets.rb'
require File.dirname(__FILE__) + '/docpath.rb'
include Docpath

file = File.new( "../../public/rebalance_input.xml" )
$inputdoc = REXML::Document.new file

@hash_account = Hash.new()
$inputdoc.elements.each("//pas_account") do |element|
  @hash_account.store( Account.new(element).acct_id ,Account.new(element))
  p @hash_account.fetch(Account.new(element).acct_id)
end

#puts "Account:" + @hash_account.to_s


@hash_model = Hash.new()
element = $inputdoc.elements["//model"]
@target_model = ModelTarget.new(element)

$inputdoc.elements.each("//model") do |element|
  @hash_model.store(ModelTarget.new(element).acct_id ,ModelTarget.new(element))
end
#puts "Target model:" + @hash_model.to_s

@parameter = Parameter.new($inputdoc.root.elements["//parameters"])

#target set {position_id, weight, on_asset_class}
##contribution_per{account_id, position_id,lot_id amount_per_one}
#over weight set {account_id,position_id ,lot_id, amount, weight,contribution_per, on_asset_class}
#under weight set {account_id,position_id,lot_id, amount, weight,contribution_per, on_asset_class}

def total_market_value
  market_value = 0
  @hash_account.each_pair do |acc_id,obj_acct|
=begin
    obj_acct.hash_positions.each_pair do |pos_id,obj_position|
      market_value =  market_value + obj_position.price * obj_position.quantity
    end
    puts   market_value
=end

   market_value =  market_value + obj_acct.market_value
  end
  return market_value
end

@total_market_value =  total_market_value

def get_total_position()
  t_hash_total_position  = Hash.new()


  @hash_account.each_pair do |acc_id,obj_acct|
    account_id = acc_id
    acct_market_value = obj_acct.market_value
    acct_positions = obj_acct.hash_positions

    #-------------for each position-------------------
    acct_positions.each_pair do |position_id,obj_position|
      pos_id = position_id
      pos_market_value = obj_position.marketvalue

      pos_on_asset_class = obj_position.get_weight_equal_100_id
      pos_weight = pos_market_value / @total_market_value.to_f
      item = Hash.new
      item = {"account_id"=>account_id,"position_id" => pos_id,"lot_id" =>nil, "amount" => pos_market_value, "weight" => pos_weight , "contribution_per" =>nil, "on_asset_class" => pos_on_asset_class}
      #puts item
      t_hash_total_position.store(account_id+"_"+pos_id,item)

    end
  end


  return t_hash_total_position
end


@hash_same_position_total_weight = get_total_position()

@arr_overweight = Array.new()
@arr_underweight = Array.new()

def cal_overweight_underweight

  percentage = 0
  array_collect_by_security = Array.new
  array_temp = Array.new

  # combine all same positions which is in each account, and calculate the total of weight on positions ,
  # put in @hash_same_position_total_weight
  @hash_same_position_total_weight.each_pair do |key_0,value_0|

    p_id_0 = value_0["position_id"]
    percentage_0 = 0;

    if(!array_temp.include?(p_id_0))
      array_temp << p_id_0

      @hash_same_position_total_weight.each_pair do |key_1,value_1|
        p_id_1 = value_1["position_id"]

        if(p_id_0 == p_id_1)
          percentage_0 = percentage_0 + value_1["weight"]
        end
      end

      array_collect_by_security << {"p_id" => p_id_0,"weight" => percentage_0}
    end
  end

 # filter which is overweight security or underweight security
 # put in @arr_overweight and  @arr_overweight
  array_collect_by_security.each do |security|
    w = security["weight"].to_s.to_f
    id = security["p_id"]

    @target_model.arr_positions.each do |value|
      t_model_weight = value.fetch("obj_position").percentage.to_s.to_f
      t_model_id = value.fetch("obj_position").position_id
      if( id== t_model_id && w > t_model_weight)
        @arr_overweight << security
      end
      if(id== t_model_id && w <= t_model_weight)
        @arr_underweight << security
      end
    end

    if !@target_model.get_array_security_id.include?(id)
      @arr_overweight << security
    end
  end


end


cal_overweight_underweight()

puts   @arr_overweight

puts "----------------------"
puts   @arr_underweight





