require 'test_helper'

class RidsShortsControllerTest < ActionController::TestCase
  setup do
    @rids_short = rids_shorts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rids_shorts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rids_short" do
    assert_difference('RidsShort.count') do
      post :create, rids_short: { city: @rids_short.city, manila_address: @rids_short.manila_address, nrotc_school: @rids_short.nrotc_school, nrotc_year_graduate: @rids_short.nrotc_year_graduate, other_skills: @rids_short.other_skills, rid_id: @rids_short.rid_id, school_address: @rids_short.school_address, so_go_number: @rids_short.so_go_number, year_and_course: @rids_short.year_and_course, zip_code: @rids_short.zip_code }
    end

    assert_redirected_to rids_short_path(assigns(:rids_short))
  end

  test "should show rids_short" do
    get :show, id: @rids_short
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rids_short
    assert_response :success
  end

  test "should update rids_short" do
    put :update, id: @rids_short, rids_short: { city: @rids_short.city, manila_address: @rids_short.manila_address, nrotc_school: @rids_short.nrotc_school, nrotc_year_graduate: @rids_short.nrotc_year_graduate, other_skills: @rids_short.other_skills, rid_id: @rids_short.rid_id, school_address: @rids_short.school_address, so_go_number: @rids_short.so_go_number, year_and_course: @rids_short.year_and_course, zip_code: @rids_short.zip_code }
    assert_redirected_to rids_short_path(assigns(:rids_short))
  end

  test "should destroy rids_short" do
    assert_difference('RidsShort.count', -1) do
      delete :destroy, id: @rids_short
    end

    assert_redirected_to rids_shorts_path
  end
end
