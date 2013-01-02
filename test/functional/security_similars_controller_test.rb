require 'test_helper'

class SecuritySimilarsControllerTest < ActionController::TestCase
  setup do
    @security_similar = security_similars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:security_similars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create security_similar" do
    assert_difference('SecuritySimilar.count') do
      post :create, security_similar: { security_id: @security_similar.security_id, similar_secid: @security_similar.similar_secid }
    end

    assert_redirected_to security_similar_path(assigns(:security_similar))
  end

  test "should show security_similar" do
    get :show, id: @security_similar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @security_similar
    assert_response :success
  end

  test "should update security_similar" do
    put :update, id: @security_similar, security_similar: { security_id: @security_similar.security_id, similar_secid: @security_similar.similar_secid }
    assert_redirected_to security_similar_path(assigns(:security_similar))
  end

  test "should destroy security_similar" do
    assert_difference('SecuritySimilar.count', -1) do
      delete :destroy, id: @security_similar
    end

    assert_redirected_to security_similars_path
  end
end
