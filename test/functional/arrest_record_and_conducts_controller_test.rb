require 'test_helper'

class ArrestRecordAndConductsControllerTest < ActionController::TestCase
  setup do
    @arrest_record_and_conduct = arrest_record_and_conducts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:arrest_record_and_conducts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create arrest_record_and_conduct" do
    assert_difference('ArrestRecordAndConduct.count') do
      post :create, arrest_record_and_conduct: { administrative_case_charged: @arrest_record_and_conduct.administrative_case_charged, arrested_or_detained_pd: @arrest_record_and_conduct.arrested_or_detained_pd, case_nature_place_of_detention: @arrest_record_and_conduct.case_nature_place_of_detention, convicted_for_violation: @arrest_record_and_conduct.convicted_for_violation, explain_administrative_charge: @arrest_record_and_conduct.explain_administrative_charge, family_member_convicted: @arrest_record_and_conduct.family_member_convicted, family_name_of_court: @arrest_record_and_conduct.family_name_of_court, name_of_court: @arrest_record_and_conduct.name_of_court, personal_detail_id: @arrest_record_and_conduct.personal_detail_id, taking_liquor_or_narcotic: @arrest_record_and_conduct.taking_liquor_or_narcotic }
    end

    assert_redirected_to arrest_record_and_conduct_path(assigns(:arrest_record_and_conduct))
  end

  test "should show arrest_record_and_conduct" do
    get :show, id: @arrest_record_and_conduct
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @arrest_record_and_conduct
    assert_response :success
  end

  test "should update arrest_record_and_conduct" do
    put :update, id: @arrest_record_and_conduct, arrest_record_and_conduct: { administrative_case_charged: @arrest_record_and_conduct.administrative_case_charged, arrested_or_detained_pd: @arrest_record_and_conduct.arrested_or_detained_pd, case_nature_place_of_detention: @arrest_record_and_conduct.case_nature_place_of_detention, convicted_for_violation: @arrest_record_and_conduct.convicted_for_violation, explain_administrative_charge: @arrest_record_and_conduct.explain_administrative_charge, family_member_convicted: @arrest_record_and_conduct.family_member_convicted, family_name_of_court: @arrest_record_and_conduct.family_name_of_court, name_of_court: @arrest_record_and_conduct.name_of_court, personal_detail_id: @arrest_record_and_conduct.personal_detail_id, taking_liquor_or_narcotic: @arrest_record_and_conduct.taking_liquor_or_narcotic }
    assert_redirected_to arrest_record_and_conduct_path(assigns(:arrest_record_and_conduct))
  end

  test "should destroy arrest_record_and_conduct" do
    assert_difference('ArrestRecordAndConduct.count', -1) do
      delete :destroy, id: @arrest_record_and_conduct
    end

    assert_redirected_to arrest_record_and_conducts_path
  end
end
