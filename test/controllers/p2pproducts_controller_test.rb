require 'test_helper'

class P2pproductsControllerTest < ActionController::TestCase
  setup do
    @p2pproduct = p2pproducts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:p2pproducts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create p2pproduct" do
    assert_difference('P2pproduct.count') do
      post :create, p2pproduct: { channelurl: @p2pproduct.channelurl, company: @p2pproduct.company, earlyBack: @p2pproduct.earlyBack, earlytransfer: @p2pproduct.earlytransfer, expectedprofitrate: @p2pproduct.expectedprofitrate, extrafields: @p2pproduct.extrafields, idea: @p2pproduct.idea, investfield: @p2pproduct.investfield, lowestAmount: @p2pproduct.lowestAmount, name: @p2pproduct.name, p_min_investment: @p2pproduct.p_min_investment, p_title: @p2pproduct.p_title, producttypelabel: @p2pproduct.producttypelabel, supplierlogourl: @p2pproduct.supplierlogourl, suppliernameshort: @p2pproduct.suppliernameshort, term: @p2pproduct.term }
    end

    assert_redirected_to p2pproduct_path(assigns(:p2pproduct))
  end

  test "should show p2pproduct" do
    get :show, id: @p2pproduct
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @p2pproduct
    assert_response :success
  end

  test "should update p2pproduct" do
    patch :update, id: @p2pproduct, p2pproduct: { channelurl: @p2pproduct.channelurl, company: @p2pproduct.company, earlyBack: @p2pproduct.earlyBack, earlytransfer: @p2pproduct.earlytransfer, expectedprofitrate: @p2pproduct.expectedprofitrate, extrafields: @p2pproduct.extrafields, idea: @p2pproduct.idea, investfield: @p2pproduct.investfield, lowestAmount: @p2pproduct.lowestAmount, name: @p2pproduct.name, p_min_investment: @p2pproduct.p_min_investment, p_title: @p2pproduct.p_title, producttypelabel: @p2pproduct.producttypelabel, supplierlogourl: @p2pproduct.supplierlogourl, suppliernameshort: @p2pproduct.suppliernameshort, term: @p2pproduct.term }
    assert_redirected_to p2pproduct_path(assigns(:p2pproduct))
  end

  test "should destroy p2pproduct" do
    assert_difference('P2pproduct.count', -1) do
      delete :destroy, id: @p2pproduct
    end

    assert_redirected_to p2pproducts_path
  end
end
