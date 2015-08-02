require 'test_helper'

class YuehuisControllerTest < ActionController::TestCase
  setup do
    @yuehui = yuehuis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:yuehuis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create yuehui" do
    assert_difference('Yuehui.count') do
      post :create, yuehui: { addr: @yuehui.addr, tel: @yuehui.tel, xingming: @yuehui.xingming }
    end

    assert_redirected_to yuehui_path(assigns(:yuehui))
  end

  test "should show yuehui" do
    get :show, id: @yuehui
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @yuehui
    assert_response :success
  end

  test "should update yuehui" do
    patch :update, id: @yuehui, yuehui: { addr: @yuehui.addr, tel: @yuehui.tel, xingming: @yuehui.xingming }
    assert_redirected_to yuehui_path(assigns(:yuehui))
  end

  test "should destroy yuehui" do
    assert_difference('Yuehui.count', -1) do
      delete :destroy, id: @yuehui
    end

    assert_redirected_to yuehuis_path
  end
end
