require 'test_helper'

class SmsnosControllerTest < ActionController::TestCase
  setup do
    @smsno = smsnos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:smsnos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create smsno" do
    assert_difference('Smsno.count') do
      post :create, smsno: { name: @smsno.name, no: @smsno.no, tag: @smsno.tag }
    end

    assert_redirected_to smsno_path(assigns(:smsno))
  end

  test "should show smsno" do
    get :show, id: @smsno
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @smsno
    assert_response :success
  end

  test "should update smsno" do
    patch :update, id: @smsno, smsno: { name: @smsno.name, no: @smsno.no, tag: @smsno.tag }
    assert_redirected_to smsno_path(assigns(:smsno))
  end

  test "should destroy smsno" do
    assert_difference('Smsno.count', -1) do
      delete :destroy, id: @smsno
    end

    assert_redirected_to smsnos_path
  end
end
