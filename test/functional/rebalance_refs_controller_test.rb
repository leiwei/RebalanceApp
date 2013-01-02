require 'test_helper'

class RebalanceRefsControllerTest < ActionController::TestCase
  setup do
    @rebalance_ref = rebalance_refs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rebalance_refs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rebalance_ref" do
    assert_difference('RebalanceRef.count') do
      post :create, rebalance_ref: { acc_id: @rebalance_ref.acc_id, client_id: @rebalance_ref.client_id, group_id: @rebalance_ref.group_id }
    end

    assert_redirected_to rebalance_ref_path(assigns(:rebalance_ref))
  end

  test "should show rebalance_ref" do
    get :show, id: @rebalance_ref
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rebalance_ref
    assert_response :success
  end

  test "should update rebalance_ref" do
    put :update, id: @rebalance_ref, rebalance_ref: { acc_id: @rebalance_ref.acc_id, client_id: @rebalance_ref.client_id, group_id: @rebalance_ref.group_id }
    assert_redirected_to rebalance_ref_path(assigns(:rebalance_ref))
  end

  test "should destroy rebalance_ref" do
    assert_difference('RebalanceRef.count', -1) do
      delete :destroy, id: @rebalance_ref
    end

    assert_redirected_to rebalance_refs_path
  end
end
