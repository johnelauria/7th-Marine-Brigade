require 'test_helper'

class ImportantUnitAssignmentsControllerTest < ActionController::TestCase
  setup do
    @important_unit_assignment = important_unit_assignments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:important_unit_assignments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create important_unit_assignment" do
    assert_difference('ImportantUnitAssignment.count') do
      post :create, important_unit_assignment: { date1: @important_unit_assignment.date1, date2: @important_unit_assignment.date2, military_history_id: @important_unit_assignment.military_history_id, unit: @important_unit_assignment.unit }
    end

    assert_redirected_to important_unit_assignment_path(assigns(:important_unit_assignment))
  end

  test "should show important_unit_assignment" do
    get :show, id: @important_unit_assignment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @important_unit_assignment
    assert_response :success
  end

  test "should update important_unit_assignment" do
    put :update, id: @important_unit_assignment, important_unit_assignment: { date1: @important_unit_assignment.date1, date2: @important_unit_assignment.date2, military_history_id: @important_unit_assignment.military_history_id, unit: @important_unit_assignment.unit }
    assert_redirected_to important_unit_assignment_path(assigns(:important_unit_assignment))
  end

  test "should destroy important_unit_assignment" do
    assert_difference('ImportantUnitAssignment.count', -1) do
      delete :destroy, id: @important_unit_assignment
    end

    assert_redirected_to important_unit_assignments_path
  end
end
