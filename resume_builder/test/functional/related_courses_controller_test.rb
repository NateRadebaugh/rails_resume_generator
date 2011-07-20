require 'test_helper'

class RelatedCoursesControllerTest < ActionController::TestCase
  setup do
    @related_course = related_courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:related_courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create related_course" do
    assert_difference('RelatedCourse.count') do
      post :create, :related_course => @related_course.attributes
    end

    assert_redirected_to related_course_path(assigns(:related_course))
  end

  test "should show related_course" do
    get :show, :id => @related_course.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @related_course.to_param
    assert_response :success
  end

  test "should update related_course" do
    put :update, :id => @related_course.to_param, :related_course => @related_course.attributes
    assert_redirected_to related_course_path(assigns(:related_course))
  end

  test "should destroy related_course" do
    assert_difference('RelatedCourse.count', -1) do
      delete :destroy, :id => @related_course.to_param
    end

    assert_redirected_to related_courses_path
  end
end
