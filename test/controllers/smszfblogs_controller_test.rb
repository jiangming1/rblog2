require 'test_helper'

class SmszfblogsControllerTest < ActionController::TestCase
  setup do
    @smszfblog = smszfblogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:smszfblogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create smszfblog" do
    assert_difference('Smszfblog.count') do
      post :create, smszfblog: { qian: @smszfblog.qian, zfbid: @smszfblog.zfbid }
    end

    assert_redirected_to smszfblog_path(assigns(:smszfblog))
  end

  test "should show smszfblog" do
    get :show, id: @smszfblog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @smszfblog
    assert_response :success
  end

  test "should update smszfblog" do
    patch :update, id: @smszfblog, smszfblog: { qian: @smszfblog.qian, zfbid: @smszfblog.zfbid }
    assert_redirected_to smszfblog_path(assigns(:smszfblog))
  end

  test "should destroy smszfblog" do
    assert_difference('Smszfblog.count', -1) do
      delete :destroy, id: @smszfblog
    end

    assert_redirected_to smszfblogs_path
  end
end
