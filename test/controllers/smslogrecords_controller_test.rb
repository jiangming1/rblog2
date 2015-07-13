require 'test_helper'

class SmslogrecordsControllerTest < ActionController::TestCase
  setup do
    @smslogrecord = smslogrecords(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:smslogrecords)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create smslogrecord" do
    assert_difference('Smslogrecord.count') do
      post :create, smslogrecord: { huoqushijian: @smslogrecord.huoqushijian, jieshouhaoma: @smslogrecord.jieshouhaoma, neirong: @smslogrecord.neirong, xiangmu: @smslogrecord.xiangmu }
    end

    assert_redirected_to smslogrecord_path(assigns(:smslogrecord))
  end

  test "should show smslogrecord" do
    get :show, id: @smslogrecord
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @smslogrecord
    assert_response :success
  end

  test "should update smslogrecord" do
    patch :update, id: @smslogrecord, smslogrecord: { huoqushijian: @smslogrecord.huoqushijian, jieshouhaoma: @smslogrecord.jieshouhaoma, neirong: @smslogrecord.neirong, xiangmu: @smslogrecord.xiangmu }
    assert_redirected_to smslogrecord_path(assigns(:smslogrecord))
  end

  test "should destroy smslogrecord" do
    assert_difference('Smslogrecord.count', -1) do
      delete :destroy, id: @smslogrecord
    end

    assert_redirected_to smslogrecords_path
  end
end
