require 'test_helper'

class OperationTypesControllerTest < ActionController::TestCase
  setup do
    @operation_type = operation_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:operation_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create operation_type" do
    assert_difference('OperationType.count') do
      post :create, :operation_type => @operation_type.attributes
    end

    assert_redirected_to operation_type_path(assigns(:operation_type))
  end

  test "should show operation_type" do
    get :show, :id => @operation_type.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @operation_type.to_param
    assert_response :success
  end

  test "should update operation_type" do
    put :update, :id => @operation_type.to_param, :operation_type => @operation_type.attributes
    assert_redirected_to operation_type_path(assigns(:operation_type))
  end

  test "should destroy operation_type" do
    assert_difference('OperationType.count', -1) do
      delete :destroy, :id => @operation_type.to_param
    end

    assert_redirected_to operation_types_path
  end
end
