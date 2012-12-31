require 'test_helper'

class RebalanceinfosControllerTest < ActionController::TestCase
  setup do
    @rebalanceinfo = rebalanceinfos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rebalanceinfos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rebalanceinfo" do
    assert_difference('Rebalanceinfo.count') do
      post :create, rebalanceinfo: {  }
    end

    assert_redirected_to rebalanceinfo_path(assigns(:rebalanceinfo))
  end

  test "should show rebalanceinfo" do
    get :show, id: @rebalanceinfo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rebalanceinfo
    assert_response :success
  end

  test "should update rebalanceinfo" do
    put :update, id: @rebalanceinfo, rebalanceinfo: {  }
    assert_redirected_to rebalanceinfo_path(assigns(:rebalanceinfo))
  end

  test "should destroy rebalanceinfo" do
    assert_difference('Rebalanceinfo.count', -1) do
      delete :destroy, id: @rebalanceinfo
    end

    assert_redirected_to rebalanceinfos_path
  end
end
