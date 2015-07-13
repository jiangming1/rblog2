require 'test_helper'

class AzufangsControllerTest < ActionController::TestCase
  setup do
    @azufang = azufangs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:azufangs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create azufang" do
    assert_difference('Azufang.count') do
      post :create, azufang: { area: @azufang.area, innertext: @azufang.innertext, lianxiren: @azufang.lianxiren, minprice: @azufang.minprice, password: @azufang.password, phone: @azufang.phone, title: @azufang.title, tupian: @azufang.tupian, username: @azufang.username, xiaoqu: @azufang.xiaoqu }
    end

    assert_redirected_to azufang_path(assigns(:azufang))
  end

  test "should show azufang" do
    get :show, id: @azufang
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @azufang
    assert_response :success
  end

  test "should update azufang" do
    patch :update, id: @azufang, azufang: { area: @azufang.area, innertext: @azufang.innertext, lianxiren: @azufang.lianxiren, minprice: @azufang.minprice, password: @azufang.password, phone: @azufang.phone, title: @azufang.title, tupian: @azufang.tupian, username: @azufang.username, xiaoqu: @azufang.xiaoqu }
    assert_redirected_to azufang_path(assigns(:azufang))
  end

  test "should destroy azufang" do
    assert_difference('Azufang.count', -1) do
      delete :destroy, id: @azufang
    end

    assert_redirected_to azufangs_path
  end
end
