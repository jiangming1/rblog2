require 'test_helper'

class ZfBduihuasControllerTest < ActionController::TestCase
  setup do
    @zf_bduihua = zf_bduihuas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:zf_bduihuas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create zf_bduihua" do
    assert_difference('ZfBduihua.count') do
      post :create, zf_bduihua: { jiaoyihao: @zf_bduihua.jiaoyihao, jin1: @zf_bduihua.jin1, jin2: @zf_bduihua.jin2, jin3: @zf_bduihua.jin3, name: @zf_bduihua.name, riqi1: @zf_bduihua.riqi1, riqi2: @zf_bduihua.riqi2, riqi3: @zf_bduihua.riqi3, shijian: @zf_bduihua.shijian, shouji: @zf_bduihua.shouji, touxiang: @zf_bduihua.touxiang, zhanghu: @zf_bduihua.zhanghu }
    end

    assert_redirected_to zf_bduihua_path(assigns(:zf_bduihua))
  end

  test "should show zf_bduihua" do
    get :show, id: @zf_bduihua
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @zf_bduihua
    assert_response :success
  end

  test "should update zf_bduihua" do
    patch :update, id: @zf_bduihua, zf_bduihua: { jiaoyihao: @zf_bduihua.jiaoyihao, jin1: @zf_bduihua.jin1, jin2: @zf_bduihua.jin2, jin3: @zf_bduihua.jin3, name: @zf_bduihua.name, riqi1: @zf_bduihua.riqi1, riqi2: @zf_bduihua.riqi2, riqi3: @zf_bduihua.riqi3, shijian: @zf_bduihua.shijian, shouji: @zf_bduihua.shouji, touxiang: @zf_bduihua.touxiang, zhanghu: @zf_bduihua.zhanghu }
    assert_redirected_to zf_bduihua_path(assigns(:zf_bduihua))
  end

  test "should destroy zf_bduihua" do
    assert_difference('ZfBduihua.count', -1) do
      delete :destroy, id: @zf_bduihua
    end

    assert_redirected_to zf_bduihuas_path
  end
end
