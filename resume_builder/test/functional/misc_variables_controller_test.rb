require 'test_helper'

class MiscVariablesControllerTest < ActionController::TestCase
  setup do
    @misc_variable = misc_variables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:misc_variables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create misc_variable" do
    assert_difference('MiscVariable.count') do
      post :create, :misc_variable => @misc_variable.attributes
    end

    assert_redirected_to misc_variable_path(assigns(:misc_variable))
  end

  test "should show misc_variable" do
    get :show, :id => @misc_variable.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @misc_variable.to_param
    assert_response :success
  end

  test "should update misc_variable" do
    put :update, :id => @misc_variable.to_param, :misc_variable => @misc_variable.attributes
    assert_redirected_to misc_variable_path(assigns(:misc_variable))
  end

  test "should destroy misc_variable" do
    assert_difference('MiscVariable.count', -1) do
      delete :destroy, :id => @misc_variable.to_param
    end

    assert_redirected_to misc_variables_path
  end
end
