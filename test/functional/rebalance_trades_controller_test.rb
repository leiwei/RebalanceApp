require 'test_helper'

class RebalanceTradesControllerTest < ActionController::TestCase
  setup do
    @rebalance_trade = rebalance_trades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rebalance_trades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rebalance_trade" do
    assert_difference('RebalanceTrade.count') do
      post :create, rebalance_trade: { acc_id: @rebalance_trade.acc_id, acc_name: @rebalance_trade.acc_name, action: @rebalance_trade.action, action_currency: @rebalance_trade.action_currency, action_id: @rebalance_trade.action_id, cur_mkvalue: @rebalance_trade.cur_mkvalue, cur_percent: @rebalance_trade.cur_percent, group_id: @rebalance_trade.group_id, is_washsale: @rebalance_trade.is_washsale, note: @rebalance_trade.note, price_date: @rebalance_trade.price_date, price_decimal: @rebalance_trade.price_decimal, prop_mkvalue: @rebalance_trade.prop_mkvalue, prop_percent: @rebalance_trade.prop_percent, quantity: @rebalance_trade.quantity, security_id: @rebalance_trade.security_id, shares: @rebalance_trade.shares, tar_percent: @rebalance_trade.tar_percent, ticker: @rebalance_trade.ticker, trade_id: @rebalance_trade.trade_id, trans_fee: @rebalance_trade.trans_fee, trans_type_code: @rebalance_trade.trans_type_code, user_id: @rebalance_trade.user_id, user_name: @rebalance_trade.user_name, xml_data: @rebalance_trade.xml_data }
    end

    assert_redirected_to rebalance_trade_path(assigns(:rebalance_trade))
  end

  test "should show rebalance_trade" do
    get :show, id: @rebalance_trade
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rebalance_trade
    assert_response :success
  end

  test "should update rebalance_trade" do
    put :update, id: @rebalance_trade, rebalance_trade: { acc_id: @rebalance_trade.acc_id, acc_name: @rebalance_trade.acc_name, action: @rebalance_trade.action, action_currency: @rebalance_trade.action_currency, action_id: @rebalance_trade.action_id, cur_mkvalue: @rebalance_trade.cur_mkvalue, cur_percent: @rebalance_trade.cur_percent, group_id: @rebalance_trade.group_id, is_washsale: @rebalance_trade.is_washsale, note: @rebalance_trade.note, price_date: @rebalance_trade.price_date, price_decimal: @rebalance_trade.price_decimal, prop_mkvalue: @rebalance_trade.prop_mkvalue, prop_percent: @rebalance_trade.prop_percent, quantity: @rebalance_trade.quantity, security_id: @rebalance_trade.security_id, shares: @rebalance_trade.shares, tar_percent: @rebalance_trade.tar_percent, ticker: @rebalance_trade.ticker, trade_id: @rebalance_trade.trade_id, trans_fee: @rebalance_trade.trans_fee, trans_type_code: @rebalance_trade.trans_type_code, user_id: @rebalance_trade.user_id, user_name: @rebalance_trade.user_name, xml_data: @rebalance_trade.xml_data }
    assert_redirected_to rebalance_trade_path(assigns(:rebalance_trade))
  end

  test "should destroy rebalance_trade" do
    assert_difference('RebalanceTrade.count', -1) do
      delete :destroy, id: @rebalance_trade
    end

    assert_redirected_to rebalance_trades_path
  end
end
