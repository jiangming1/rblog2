require 'test_helper'

class CentersControllerTest < ActionController::TestCase
  setup do
    @center = centers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:centers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create center" do
    assert_difference('Center.count') do
      post :create, center: { name: @center.name }
    end

    assert_redirected_to center_path(assigns(:center))
  end

  test "should show center" do
    get :show, id: @center
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @center
    assert_response :success
  end

  test "should update center" do
    patch :update, id: @center, center: { name: @center.name }
    assert_redirected_to center_path(assigns(:center))
  end

  test "should destroy center" do
    assert_difference('Center.count', -1) do
      delete :destroy, id: @center
    end

    assert_redirected_to centers_path
  end
end
