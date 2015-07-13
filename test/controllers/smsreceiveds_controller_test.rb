require 'test_helper'

class SmsreceivedsControllerTest < ActionController::TestCase
  setup do
    @smsreceived = smsreceiveds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:smsreceiveds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create smsreceived" do
    assert_difference('Smsreceived.count') do
      post :create, smsreceived: { body: @smsreceived.body, no: @smsreceived.no, tag: @smsreceived.tag }
    end

    assert_redirected_to smsreceived_path(assigns(:smsreceived))
  end

  test "should show smsreceived" do
    get :show, id: @smsreceived
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @smsreceived
    assert_response :success
  end

  test "should update smsreceived" do
    patch :update, id: @smsreceived, smsreceived: { body: @smsreceived.body, no: @smsreceived.no, tag: @smsreceived.tag }
    assert_redirected_to smsreceived_path(assigns(:smsreceived))
  end

  test "should destroy smsreceived" do
    assert_difference('Smsreceived.count', -1) do
      delete :destroy, id: @smsreceived
    end

    assert_redirected_to smsreceiveds_path
  end
end
