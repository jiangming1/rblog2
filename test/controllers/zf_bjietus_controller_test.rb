require 'test_helper'

class ZfBjietusControllerTest < ActionController::TestCase
  setup do
    @zf_bjietu = zf_bjietus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:zf_bjietus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create zf_bjietu" do
    assert_difference('ZfBjietu.count') do
      post :create, zf_bjietu: { biaotixingming: @zf_bjietu.biaotixingming, jiaoyihao: @zf_bjietu.jiaoyihao, shijian: @zf_bjietu.shijian, shouji: @zf_bjietu.shouji, zhanghu: @zf_bjietu.zhanghu }
    end

    assert_redirected_to zf_bjietu_path(assigns(:zf_bjietu))
  end

  test "should show zf_bjietu" do
    get :show, id: @zf_bjietu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @zf_bjietu
    assert_response :success
  end

  test "should update zf_bjietu" do
    patch :update, id: @zf_bjietu, zf_bjietu: { biaotixingming: @zf_bjietu.biaotixingming, jiaoyihao: @zf_bjietu.jiaoyihao, shijian: @zf_bjietu.shijian, shouji: @zf_bjietu.shouji, zhanghu: @zf_bjietu.zhanghu }
    assert_redirected_to zf_bjietu_path(assigns(:zf_bjietu))
  end

  test "should destroy zf_bjietu" do
    assert_difference('ZfBjietu.count', -1) do
      delete :destroy, id: @zf_bjietu
    end

    assert_redirected_to zf_bjietus_path
  end
end
