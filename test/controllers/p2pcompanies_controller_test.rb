require 'test_helper'

class P2pcompaniesControllerTest < ActionController::TestCase
  setup do
    @p2pcompany = p2pcompanies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:p2pcompanies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create p2pcompany" do
    assert_difference('P2pcompany.count') do
      post :create, p2pcompany: { c_address: @p2pcompany.c_address, c_create_time: @p2pcompany.c_create_time, c_icon: @p2pcompany.c_icon, c_name: @p2pcompany.c_name, c_net_address: @p2pcompany.c_net_address, c_persion: @p2pcompany.c_persion, c_phone: @p2pcompany.c_phone, c_product_type: @p2pcompany.c_product_type, c_province: @p2pcompany.c_province }
    end

    assert_redirected_to p2pcompany_path(assigns(:p2pcompany))
  end

  test "should show p2pcompany" do
    get :show, id: @p2pcompany
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @p2pcompany
    assert_response :success
  end

  test "should update p2pcompany" do
    patch :update, id: @p2pcompany, p2pcompany: { c_address: @p2pcompany.c_address, c_create_time: @p2pcompany.c_create_time, c_icon: @p2pcompany.c_icon, c_name: @p2pcompany.c_name, c_net_address: @p2pcompany.c_net_address, c_persion: @p2pcompany.c_persion, c_phone: @p2pcompany.c_phone, c_product_type: @p2pcompany.c_product_type, c_province: @p2pcompany.c_province }
    assert_redirected_to p2pcompany_path(assigns(:p2pcompany))
  end

  test "should destroy p2pcompany" do
    assert_difference('P2pcompany.count', -1) do
      delete :destroy, id: @p2pcompany
    end

    assert_redirected_to p2pcompanies_path
  end
end
