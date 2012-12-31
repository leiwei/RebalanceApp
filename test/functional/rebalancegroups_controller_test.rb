require 'test_helper'

class RebalancegroupsControllerTest < ActionController::TestCase
  setup do
    @rebalancegroup = rebalancegroups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rebalancegroups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rebalancegroup" do
    assert_difference('Rebalancegroup.count') do
      post :create, rebalancegroup: {  }
    end

    assert_redirected_to rebalancegroup_path(assigns(:rebalancegroup))
  end

  test "should show rebalancegroup" do
    get :show, id: @rebalancegroup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rebalancegroup
    assert_response :success
  end

  test "should update rebalancegroup" do
    put :update, id: @rebalancegroup, rebalancegroup: {  }
    assert_redirected_to rebalancegroup_path(assigns(:rebalancegroup))
  end

  test "should destroy rebalancegroup" do
    assert_difference('Rebalancegroup.count', -1) do
      delete :destroy, id: @rebalancegroup
    end

    assert_redirected_to rebalancegroups_path
  end
end
