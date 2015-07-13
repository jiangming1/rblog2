require 'test_helper'

class SmstaglistsControllerTest < ActionController::TestCase
  setup do
    @smstaglist = smstaglists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:smstaglists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create smstaglist" do
    assert_difference('Smstaglist.count') do
      post :create, smstaglist: { isonline: @smstaglist.isonline, laiyuan: @smstaglist.laiyuan, name: @smstaglist.name, price: @smstaglist.price }
    end

    assert_redirected_to smstaglist_path(assigns(:smstaglist))
  end

  test "should show smstaglist" do
    get :show, id: @smstaglist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @smstaglist
    assert_response :success
  end

  test "should update smstaglist" do
    patch :update, id: @smstaglist, smstaglist: { isonline: @smstaglist.isonline, laiyuan: @smstaglist.laiyuan, name: @smstaglist.name, price: @smstaglist.price }
    assert_redirected_to smstaglist_path(assigns(:smstaglist))
  end

  test "should destroy smstaglist" do
    assert_difference('Smstaglist.count', -1) do
      delete :destroy, id: @smstaglist
    end

    assert_redirected_to smstaglists_path
  end
end
