require 'test_helper'

class WxzhuanzhangsControllerTest < ActionController::TestCase
  setup do
    @wxzhuanzhang = wxzhuanzhangs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wxzhuanzhangs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wxzhuanzhang" do
    assert_difference('Wxzhuanzhang.count') do
      post :create, wxzhuanzhang: { jin: @wxzhuanzhang.jin, riqi: @wxzhuanzhang.riqi, xingming: @wxzhuanzhang.xingming }
    end

    assert_redirected_to wxzhuanzhang_path(assigns(:wxzhuanzhang))
  end

  test "should show wxzhuanzhang" do
    get :show, id: @wxzhuanzhang
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wxzhuanzhang
    assert_response :success
  end

  test "should update wxzhuanzhang" do
    patch :update, id: @wxzhuanzhang, wxzhuanzhang: { jin: @wxzhuanzhang.jin, riqi: @wxzhuanzhang.riqi, xingming: @wxzhuanzhang.xingming }
    assert_redirected_to wxzhuanzhang_path(assigns(:wxzhuanzhang))
  end

  test "should destroy wxzhuanzhang" do
    assert_difference('Wxzhuanzhang.count', -1) do
      delete :destroy, id: @wxzhuanzhang
    end

    assert_redirected_to wxzhuanzhangs_path
  end
end
