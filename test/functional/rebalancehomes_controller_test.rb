require 'test_helper'

class RebalancehomesControllerTest < ActionController::TestCase
  setup do
    @rebalancehome = rebalancehomes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rebalancehomes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rebalancehome" do
    assert_difference('Rebalancehome.count') do
      post :create, rebalancehome: {  }
    end

    assert_redirected_to rebalancehome_path(assigns(:rebalancehome))
  end

  test "should show rebalancehome" do
    get :show, id: @rebalancehome
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rebalancehome
    assert_response :success
  end

  test "should update rebalancehome" do
    put :update, id: @rebalancehome, rebalancehome: {  }
    assert_redirected_to rebalancehome_path(assigns(:rebalancehome))
  end

  test "should destroy rebalancehome" do
    assert_difference('Rebalancehome.count', -1) do
      delete :destroy, id: @rebalancehome
    end

    assert_redirected_to rebalancehomes_path
  end
end
