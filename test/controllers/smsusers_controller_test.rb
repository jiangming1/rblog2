require 'test_helper'

class SmsusersControllerTest < ActionController::TestCase
  setup do
    @smsuser = smsusers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:smsusers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create smsuser" do
    assert_difference('Smsuser.count') do
      post :create, smsuser: { loginname: @smsuser.loginname, mail: @smsuser.mail, mob: @smsuser.mob, qq: @smsuser.qq, usertype: @smsuser.usertype, zhifubao: @smsuser.zhifubao }
    end

    assert_redirected_to smsuser_path(assigns(:smsuser))
  end

  test "should show smsuser" do
    get :show, id: @smsuser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @smsuser
    assert_response :success
  end

  test "should update smsuser" do
    patch :update, id: @smsuser, smsuser: { loginname: @smsuser.loginname, mail: @smsuser.mail, mob: @smsuser.mob, qq: @smsuser.qq, usertype: @smsuser.usertype, zhifubao: @smsuser.zhifubao }
    assert_redirected_to smsuser_path(assigns(:smsuser))
  end

  test "should destroy smsuser" do
    assert_difference('Smsuser.count', -1) do
      delete :destroy, id: @smsuser
    end

    assert_redirected_to smsusers_path
  end
end
