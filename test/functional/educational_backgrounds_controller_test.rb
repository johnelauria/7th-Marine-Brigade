require 'test_helper'

class EducationalBackgroundsControllerTest < ActionController::TestCase
  setup do
    @educational_background = educational_backgrounds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:educational_backgrounds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create educational_background" do
    assert_difference('EducationalBackground.count') do
      post :create, educational_background: { civil_service_eligibility: @educational_background.civil_service_eligibility, college_date_of_attendance1: @educational_background.college_date_of_attendance1, college_date_of_attendance2: @educational_background.college_date_of_attendance2, college_location: @educational_background.college_location, college_year_graduate: @educational_background.college_year_graduate, elementary_date_of_attendance1: @educational_background.elementary_date_of_attendance1, elementary_date_of_attendance2: @educational_background.elementary_date_of_attendance2, elementary_location: @educational_background.elementary_location, elementary_year_graduate: @educational_background.elementary_year_graduate, high_school_date_of_attendance1: @educational_background.high_school_date_of_attendance1, high_school_date_of_attendance2: @educational_background.high_school_date_of_attendance2, high_school_location: @educational_background.high_school_location, high_school_year_graduate: @educational_background.high_school_year_graduate, other_date_of_attendance1: @educational_background.other_date_of_attendance1, other_date_of_attendance2: @educational_background.other_date_of_attendance2, other_location: @educational_background.other_location, other_year_graduate: @educational_background.other_year_graduate, post_graduate_date_of_attendance1: @educational_background.post_graduate_date_of_attendance1, post_graduate_date_of_attendance2: @educational_background.post_graduate_date_of_attendance2, post_graduate_location: @educational_background.post_graduate_location, post_graduate_year_graduate: @educational_background.post_graduate_year_graduate }
    end

    assert_redirected_to educational_background_path(assigns(:educational_background))
  end

  test "should show educational_background" do
    get :show, id: @educational_background
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @educational_background
    assert_response :success
  end

  test "should update educational_background" do
    put :update, id: @educational_background, educational_background: { civil_service_eligibility: @educational_background.civil_service_eligibility, college_date_of_attendance1: @educational_background.college_date_of_attendance1, college_date_of_attendance2: @educational_background.college_date_of_attendance2, college_location: @educational_background.college_location, college_year_graduate: @educational_background.college_year_graduate, elementary_date_of_attendance1: @educational_background.elementary_date_of_attendance1, elementary_date_of_attendance2: @educational_background.elementary_date_of_attendance2, elementary_location: @educational_background.elementary_location, elementary_year_graduate: @educational_background.elementary_year_graduate, high_school_date_of_attendance1: @educational_background.high_school_date_of_attendance1, high_school_date_of_attendance2: @educational_background.high_school_date_of_attendance2, high_school_location: @educational_background.high_school_location, high_school_year_graduate: @educational_background.high_school_year_graduate, other_date_of_attendance1: @educational_background.other_date_of_attendance1, other_date_of_attendance2: @educational_background.other_date_of_attendance2, other_location: @educational_background.other_location, other_year_graduate: @educational_background.other_year_graduate, post_graduate_date_of_attendance1: @educational_background.post_graduate_date_of_attendance1, post_graduate_date_of_attendance2: @educational_background.post_graduate_date_of_attendance2, post_graduate_location: @educational_background.post_graduate_location, post_graduate_year_graduate: @educational_background.post_graduate_year_graduate }
    assert_redirected_to educational_background_path(assigns(:educational_background))
  end

  test "should destroy educational_background" do
    assert_difference('EducationalBackground.count', -1) do
      delete :destroy, id: @educational_background
    end

    assert_redirected_to educational_backgrounds_path
  end
end
