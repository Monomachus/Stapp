require 'test_helper'

class ProductOperationsControllerTest < ActionController::TestCase
  setup do
    @product_operation = product_operations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_operations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_operation" do
    assert_difference('ProductOperation.count') do
      post :create, :product_operation => @product_operation.attributes
    end

    assert_redirected_to product_operation_path(assigns(:product_operation))
  end

  test "should show product_operation" do
    get :show, :id => @product_operation.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @product_operation.to_param
    assert_response :success
  end

  test "should update product_operation" do
    put :update, :id => @product_operation.to_param, :product_operation => @product_operation.attributes
    assert_redirected_to product_operation_path(assigns(:product_operation))
  end

  test "should destroy product_operation" do
    assert_difference('ProductOperation.count', -1) do
      delete :destroy, :id => @product_operation.to_param
    end

    assert_redirected_to product_operations_path
  end
end
