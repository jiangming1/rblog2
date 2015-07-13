require 'test_helper'

class LsControllerTest < ActionController::TestCase
  setup do
    @l = ls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create l" do
    assert_difference('L.count') do
      post :create, l: { a: @l.a }
    end

    assert_redirected_to l_path(assigns(:l))
  end

  test "should show l" do
    get :show, id: @l
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @l
    assert_response :success
  end

  test "should update l" do
    patch :update, id: @l, l: { a: @l.a }
    assert_redirected_to l_path(assigns(:l))
  end

  test "should destroy l" do
    assert_difference('L.count', -1) do
      delete :destroy, id: @l
    end

    assert_redirected_to ls_path
  end
end
