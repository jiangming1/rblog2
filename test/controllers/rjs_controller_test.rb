require 'test_helper'

class RjsControllerTest < ActionController::TestCase
  setup do
    @rj = rjs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rjs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rj" do
    assert_difference('Rj.count') do
      post :create, rj: { baobiao: @rj.baobiao, caozuo: @rj.caozuo, chuangkou: @rj.chuangkou, danjia: @rj.danjia, daohang: @rj.daohang, jiaocheng: @rj.jiaocheng, jieshao: @rj.jieshao, kehuduan: @rj.kehuduan, ming: @rj.ming, pdf: @rj.pdf, wangjia: @rj.wangjia, xinxijiegou: @rj.xinxijiegou }
    end

    assert_redirected_to rj_path(assigns(:rj))
  end

  test "should show rj" do
    get :show, id: @rj
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rj
    assert_response :success
  end

  test "should update rj" do
    patch :update, id: @rj, rj: { baobiao: @rj.baobiao, caozuo: @rj.caozuo, chuangkou: @rj.chuangkou, danjia: @rj.danjia, daohang: @rj.daohang, jiaocheng: @rj.jiaocheng, jieshao: @rj.jieshao, kehuduan: @rj.kehuduan, ming: @rj.ming, pdf: @rj.pdf, wangjia: @rj.wangjia, xinxijiegou: @rj.xinxijiegou }
    assert_redirected_to rj_path(assigns(:rj))
  end

  test "should destroy rj" do
    assert_difference('Rj.count', -1) do
      delete :destroy, id: @rj
    end

    assert_redirected_to rjs_path
  end
end
