require 'test_helper'

class ReblancesControllerTest < ActionController::TestCase
  setup do
    @reblance = reblances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reblances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reblance" do
    assert_difference('Reblance.count') do
      post :create, reblance: {  }
    end

    assert_redirected_to reblance_path(assigns(:reblance))
  end

  test "should show reblance" do
    get :show, id: @reblance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reblance
    assert_response :success
  end

  test "should update reblance" do
    put :update, id: @reblance, reblance: {  }
    assert_redirected_to reblance_path(assigns(:reblance))
  end

  test "should destroy reblance" do
    assert_difference('Reblance.count', -1) do
      delete :destroy, id: @reblance
    end

    assert_redirected_to reblances_path
  end
end
