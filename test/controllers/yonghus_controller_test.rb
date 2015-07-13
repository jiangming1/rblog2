require 'test_helper'

class YonghusControllerTest < ActionController::TestCase
  setup do
    @yonghu = yonghus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:yonghus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create yonghu" do
    assert_difference('Yonghu.count') do
      post :create, yonghu: { gongsidianhua: @yonghu.gongsidianhua, gongsimingcheng: @yonghu.gongsimingcheng, ip: @yonghu.ip, qq: @yonghu.qq, quhao: @yonghu.quhao, shouji: @yonghu.shouji, xingming: @yonghu.xingming }
    end

    assert_redirected_to yonghu_path(assigns(:yonghu))
  end

  test "should show yonghu" do
    get :show, id: @yonghu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @yonghu
    assert_response :success
  end

  test "should update yonghu" do
    patch :update, id: @yonghu, yonghu: { gongsidianhua: @yonghu.gongsidianhua, gongsimingcheng: @yonghu.gongsimingcheng, ip: @yonghu.ip, qq: @yonghu.qq, quhao: @yonghu.quhao, shouji: @yonghu.shouji, xingming: @yonghu.xingming }
    assert_redirected_to yonghu_path(assigns(:yonghu))
  end

  test "should destroy yonghu" do
    assert_difference('Yonghu.count', -1) do
      delete :destroy, id: @yonghu
    end

    assert_redirected_to yonghus_path
  end
end
