require 'test_helper'

class AadtsControllerTest < ActionController::TestCase
  setup do
    @aadt = aadts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aadts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aadt" do
    assert_difference('Aadt.count') do
      post :create, aadt: { afpsn: @aadt.afpsn, assignment_mobilization_center: @aadt.assignment_mobilization_center, authority: @aadt.authority, date_of_commission: @aadt.date_of_commission, date_of_last_promotion: @aadt.date_of_last_promotion, licence: @aadt.licence, name: @aadt.name, permanent_address: @aadt.permanent_address, personal_detail_id: @aadt.personal_detail_id, present_reserve_unit_assignment: @aadt.present_reserve_unit_assignment, purpose_of_aadt: @aadt.purpose_of_aadt, rank: @aadt.rank, residence_tel_no: @aadt.residence_tel_no, skills: @aadt.skills, special: @aadt.special, undergo_thirty_days: @aadt.undergo_thirty_days }
    end

    assert_redirected_to aadt_path(assigns(:aadt))
  end

  test "should show aadt" do
    get :show, id: @aadt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aadt
    assert_response :success
  end

  test "should update aadt" do
    put :update, id: @aadt, aadt: { afpsn: @aadt.afpsn, assignment_mobilization_center: @aadt.assignment_mobilization_center, authority: @aadt.authority, date_of_commission: @aadt.date_of_commission, date_of_last_promotion: @aadt.date_of_last_promotion, licence: @aadt.licence, name: @aadt.name, permanent_address: @aadt.permanent_address, personal_detail_id: @aadt.personal_detail_id, present_reserve_unit_assignment: @aadt.present_reserve_unit_assignment, purpose_of_aadt: @aadt.purpose_of_aadt, rank: @aadt.rank, residence_tel_no: @aadt.residence_tel_no, skills: @aadt.skills, special: @aadt.special, undergo_thirty_days: @aadt.undergo_thirty_days }
    assert_redirected_to aadt_path(assigns(:aadt))
  end

  test "should destroy aadt" do
    assert_difference('Aadt.count', -1) do
      delete :destroy, id: @aadt
    end

    assert_redirected_to aadts_path
  end
end
