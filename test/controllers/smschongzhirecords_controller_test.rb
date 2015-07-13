require 'test_helper'

class SmschongzhirecordsControllerTest < ActionController::TestCase
  setup do
    @smschongzhirecord = smschongzhirecords(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:smschongzhirecords)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create smschongzhirecord" do
    assert_difference('Smschongzhirecord.count') do
      post :create, smschongzhirecord: { chongzhibi: @smschongzhirecord.chongzhibi, chongzhijine: @smschongzhirecord.chongzhijine, dingdanhao: @smschongzhirecord.dingdanhao, oldbi: @smschongzhirecord.oldbi }
    end

    assert_redirected_to smschongzhirecord_path(assigns(:smschongzhirecord))
  end

  test "should show smschongzhirecord" do
    get :show, id: @smschongzhirecord
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @smschongzhirecord
    assert_response :success
  end

  test "should update smschongzhirecord" do
    patch :update, id: @smschongzhirecord, smschongzhirecord: { chongzhibi: @smschongzhirecord.chongzhibi, chongzhijine: @smschongzhirecord.chongzhijine, dingdanhao: @smschongzhirecord.dingdanhao, oldbi: @smschongzhirecord.oldbi }
    assert_redirected_to smschongzhirecord_path(assigns(:smschongzhirecord))
  end

  test "should destroy smschongzhirecord" do
    assert_difference('Smschongzhirecord.count', -1) do
      delete :destroy, id: @smschongzhirecord
    end

    assert_redirected_to smschongzhirecords_path
  end
end
