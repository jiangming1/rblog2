require 'test_helper'

class L1sControllerTest < ActionController::TestCase
  setup do
    @l1 = l1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:l1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create l1" do
    assert_difference('L1.count') do
      post :create, l1: { a: @l1.a }
    end

    assert_redirected_to l1_path(assigns(:l1))
  end

  test "should show l1" do
    get :show, id: @l1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @l1
    assert_response :success
  end

  test "should update l1" do
    patch :update, id: @l1, l1: { a: @l1.a }
    assert_redirected_to l1_path(assigns(:l1))
  end

  test "should destroy l1" do
    assert_difference('L1.count', -1) do
      delete :destroy, id: @l1
    end

    assert_redirected_to l1s_path
  end
end
