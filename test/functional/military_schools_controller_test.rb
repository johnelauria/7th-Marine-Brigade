require 'test_helper'

class MilitarySchoolsControllerTest < ActionController::TestCase
  setup do
    @military_school = military_schools(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:military_schools)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create military_school" do
    assert_difference('MilitarySchool.count') do
      post :create, military_school: { date_of_attendance: @military_school.date_of_attendance, location: @military_school.location, military_history_id: @military_school.military_history_id, name_of_school: @military_school.name_of_school, nature_of_training: @military_school.nature_of_training, rating: @military_school.rating }
    end

    assert_redirected_to military_school_path(assigns(:military_school))
  end

  test "should show military_school" do
    get :show, id: @military_school
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @military_school
    assert_response :success
  end

  test "should update military_school" do
    put :update, id: @military_school, military_school: { date_of_attendance: @military_school.date_of_attendance, location: @military_school.location, military_history_id: @military_school.military_history_id, name_of_school: @military_school.name_of_school, nature_of_training: @military_school.nature_of_training, rating: @military_school.rating }
    assert_redirected_to military_school_path(assigns(:military_school))
  end

  test "should destroy military_school" do
    assert_difference('MilitarySchool.count', -1) do
      delete :destroy, id: @military_school
    end

    assert_redirected_to military_schools_path
  end
end
