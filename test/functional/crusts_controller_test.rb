require 'test_helper'

class CrustsControllerTest < ActionController::TestCase
  setup do
    @crust = crusts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:crusts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create crust" do
    assert_difference('Crust.count') do
      post :create, crust: { name: @crust.name }
    end

    assert_redirected_to crust_path(assigns(:crust))
  end

  test "should show crust" do
    get :show, id: @crust
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @crust
    assert_response :success
  end

  test "should update crust" do
    put :update, id: @crust, crust: { name: @crust.name }
    assert_redirected_to crust_path(assigns(:crust))
  end

  test "should destroy crust" do
    assert_difference('Crust.count', -1) do
      delete :destroy, id: @crust
    end

    assert_redirected_to crusts_path
  end
end
