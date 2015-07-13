require 'test_helper'

class SmsuserusedtellistsControllerTest < ActionController::TestCase
  setup do
    @smsuserusedtellist = smsuserusedtellists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:smsuserusedtellists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create smsuserusedtellist" do
    assert_difference('Smsuserusedtellist.count') do
      post :create, smsuserusedtellist: { name: @smsuserusedtellist.name, telpostion: @smsuserusedtellist.telpostion }
    end

    assert_redirected_to smsuserusedtellist_path(assigns(:smsuserusedtellist))
  end

  test "should show smsuserusedtellist" do
    get :show, id: @smsuserusedtellist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @smsuserusedtellist
    assert_response :success
  end

  test "should update smsuserusedtellist" do
    patch :update, id: @smsuserusedtellist, smsuserusedtellist: { name: @smsuserusedtellist.name, telpostion: @smsuserusedtellist.telpostion }
    assert_redirected_to smsuserusedtellist_path(assigns(:smsuserusedtellist))
  end

  test "should destroy smsuserusedtellist" do
    assert_difference('Smsuserusedtellist.count', -1) do
      delete :destroy, id: @smsuserusedtellist
    end

    assert_redirected_to smsuserusedtellists_path
  end
end
