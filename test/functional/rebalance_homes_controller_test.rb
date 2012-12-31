require 'test_helper'

class RebalanceHomesControllerTest < ActionController::TestCase
  setup do
    @rebalance_home = rebalance_homes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rebalance_homes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rebalance_home" do
    assert_difference('RebalanceHome.count') do
      post :create, rebalance_home: {  }
    end

    assert_redirected_to rebalance_home_path(assigns(:rebalance_home))
  end

  test "should show rebalance_home" do
    get :show, id: @rebalance_home
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rebalance_home
    assert_response :success
  end

  test "should update rebalance_home" do
    put :update, id: @rebalance_home, rebalance_home: {  }
    assert_redirected_to rebalance_home_path(assigns(:rebalance_home))
  end

  test "should destroy rebalance_home" do
    assert_difference('RebalanceHome.count', -1) do
      delete :destroy, id: @rebalance_home
    end

    assert_redirected_to rebalance_homes_path
  end
end
