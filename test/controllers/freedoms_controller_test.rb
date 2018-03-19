require 'test_helper'

class FreedomsControllerTest < ActionController::TestCase
  setup do
    @freedom = freedoms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:freedoms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create freedom" do
    assert_difference('Freedom.count') do
      post :create, freedom: { message: @freedom.message, name: @freedom.name }
    end

    assert_redirected_to freedom_path(assigns(:freedom))
  end

  test "should show freedom" do
    get :show, id: @freedom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @freedom
    assert_response :success
  end

  test "should update freedom" do
    patch :update, id: @freedom, freedom: { message: @freedom.message, name: @freedom.name }
    assert_redirected_to freedom_path(assigns(:freedom))
  end

  test "should destroy freedom" do
    assert_difference('Freedom.count', -1) do
      delete :destroy, id: @freedom
    end

    assert_redirected_to freedoms_path
  end
end
