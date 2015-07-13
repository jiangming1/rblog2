require 'test_helper'

class SoftnamesControllerTest < ActionController::TestCase
  setup do
    @softname = softnames(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:softnames)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create softname" do
    assert_difference('Softname.count') do
      post :create, softname: { body: @softname.body, crsky_id: @softname.crsky_id, duote_id: @softname.duote_id, huajun_id: @softname.huajun_id, name: @softname.name }
    end

    assert_redirected_to softname_path(assigns(:softname))
  end

  test "should show softname" do
    get :show, id: @softname
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @softname
    assert_response :success
  end

  test "should update softname" do
    patch :update, id: @softname, softname: { body: @softname.body, crsky_id: @softname.crsky_id, duote_id: @softname.duote_id, huajun_id: @softname.huajun_id, name: @softname.name }
    assert_redirected_to softname_path(assigns(:softname))
  end

  test "should destroy softname" do
    assert_difference('Softname.count', -1) do
      delete :destroy, id: @softname
    end

    assert_redirected_to softnames_path
  end
end
