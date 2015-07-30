require 'test_helper'

class DizhisControllerTest < ActionController::TestCase
  setup do
    @dizhi = dizhis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dizhis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dizhi" do
    assert_difference('Dizhi.count') do
      post :create, dizhi: { addr: @dizhi.addr, name: @dizhi.name, tel: @dizhi.tel }
    end

    assert_redirected_to dizhi_path(assigns(:dizhi))
  end

  test "should show dizhi" do
    get :show, id: @dizhi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dizhi
    assert_response :success
  end

  test "should update dizhi" do
    patch :update, id: @dizhi, dizhi: { addr: @dizhi.addr, name: @dizhi.name, tel: @dizhi.tel }
    assert_redirected_to dizhi_path(assigns(:dizhi))
  end

  test "should destroy dizhi" do
    assert_difference('Dizhi.count', -1) do
      delete :destroy, id: @dizhi
    end

    assert_redirected_to dizhis_path
  end
end
