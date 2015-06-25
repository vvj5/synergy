require 'test_helper'

class EmployeeCoursesControllerTest < ActionController::TestCase
  setup do
    @employee_course = employee_courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employee_courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee_course" do
    assert_difference('EmployeeCourse.count') do
      post :create, employee_course: { course_id: @employee_course.course_id, employee_id: @employee_course.employee_id }
    end

    assert_redirected_to employee_course_path(assigns(:employee_course))
  end

  test "should show employee_course" do
    get :show, id: @employee_course
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee_course
    assert_response :success
  end

  test "should update employee_course" do
    patch :update, id: @employee_course, employee_course: { course_id: @employee_course.course_id, employee_id: @employee_course.employee_id }
    assert_redirected_to employee_course_path(assigns(:employee_course))
  end

  test "should destroy employee_course" do
    assert_difference('EmployeeCourse.count', -1) do
      delete :destroy, id: @employee_course
    end

    assert_redirected_to employee_courses_path
  end
end
