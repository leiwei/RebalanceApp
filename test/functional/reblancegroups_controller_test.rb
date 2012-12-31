require 'test_helper'

class ReblancegroupsControllerTest < ActionController::TestCase
  setup do
    @reblancegroup = reblancegroups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reblancegroups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reblancegroup" do
    assert_difference('Reblancegroup.count') do
      post :create, reblancegroup: {  }
    end

    assert_redirected_to reblancegroup_path(assigns(:reblancegroup))
  end

  test "should show reblancegroup" do
    get :show, id: @reblancegroup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reblancegroup
    assert_response :success
  end

  test "should update reblancegroup" do
    put :update, id: @reblancegroup, reblancegroup: {  }
    assert_redirected_to reblancegroup_path(assigns(:reblancegroup))
  end

  test "should destroy reblancegroup" do
    assert_difference('Reblancegroup.count', -1) do
      delete :destroy, id: @reblancegroup
    end

    assert_redirected_to reblancegroups_path
  end
end
