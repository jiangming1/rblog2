require 'test_helper'

class SmstagsControllerTest < ActionController::TestCase
  setup do
    @smstag = smstags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:smstags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create smstag" do
    assert_difference('Smstag.count') do
      post :create, smstag: { isonline: @smstag.isonline, laiyuan: @smstag.laiyuan, mobid: @smstag.mobid, mobno: @smstag.mobno, name: @smstag.name, price: @smstag.price }
    end

    assert_redirected_to smstag_path(assigns(:smstag))
  end

  test "should show smstag" do
    get :show, id: @smstag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @smstag
    assert_response :success
  end

  test "should update smstag" do
    patch :update, id: @smstag, smstag: { isonline: @smstag.isonline, laiyuan: @smstag.laiyuan, mobid: @smstag.mobid, mobno: @smstag.mobno, name: @smstag.name, price: @smstag.price }
    assert_redirected_to smstag_path(assigns(:smstag))
  end

  test "should destroy smstag" do
    assert_difference('Smstag.count', -1) do
      delete :destroy, id: @smstag
    end

    assert_redirected_to smstags_path
  end
end
