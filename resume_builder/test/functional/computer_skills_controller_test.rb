require 'test_helper'

class ComputerSkillsControllerTest < ActionController::TestCase
  setup do
    @computer_skill = computer_skills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:computer_skills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create computer_skill" do
    assert_difference('ComputerSkill.count') do
      post :create, :computer_skill => @computer_skill.attributes
    end

    assert_redirected_to computer_skill_path(assigns(:computer_skill))
  end

  test "should show computer_skill" do
    get :show, :id => @computer_skill.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @computer_skill.to_param
    assert_response :success
  end

  test "should update computer_skill" do
    put :update, :id => @computer_skill.to_param, :computer_skill => @computer_skill.attributes
    assert_redirected_to computer_skill_path(assigns(:computer_skill))
  end

  test "should destroy computer_skill" do
    assert_difference('ComputerSkill.count', -1) do
      delete :destroy, :id => @computer_skill.to_param
    end

    assert_redirected_to computer_skills_path
  end
end
