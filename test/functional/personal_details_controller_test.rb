require 'test_helper'

class PersonalDetailsControllerTest < ActionController::TestCase
  setup do
    @personal_detail = personal_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personal_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personal_detail" do
    assert_difference('PersonalDetail.count') do
      post :create, personal_detail: { AFPSN: @personal_detail.AFPSN, BR_SVC: @personal_detail.BR_SVC, assignment: @personal_detail.assignment, birthdate: @personal_detail.birthdate, change_in_name: @personal_detail.change_in_name, duty_address: @personal_detail.duty_address, first_name: @personal_detail.first_name, home_address: @personal_detail.home_address, last_name: @personal_detail.last_name, middle_name: @personal_detail.middle_name, national_reg_cards_no: @personal_detail.national_reg_cards_no, nationality: @personal_detail.nationality, place_of_birth: @personal_detail.place_of_birth, rank: @personal_detail.rank, telephone: @personal_detail.telephone, tin: @personal_detail.tin }
    end

    assert_redirected_to personal_detail_path(assigns(:personal_detail))
  end

  test "should show personal_detail" do
    get :show, id: @personal_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @personal_detail
    assert_response :success
  end

  test "should update personal_detail" do
    put :update, id: @personal_detail, personal_detail: { AFPSN: @personal_detail.AFPSN, BR_SVC: @personal_detail.BR_SVC, assignment: @personal_detail.assignment, birthdate: @personal_detail.birthdate, change_in_name: @personal_detail.change_in_name, duty_address: @personal_detail.duty_address, first_name: @personal_detail.first_name, home_address: @personal_detail.home_address, last_name: @personal_detail.last_name, middle_name: @personal_detail.middle_name, national_reg_cards_no: @personal_detail.national_reg_cards_no, nationality: @personal_detail.nationality, place_of_birth: @personal_detail.place_of_birth, rank: @personal_detail.rank, telephone: @personal_detail.telephone, tin: @personal_detail.tin }
    assert_redirected_to personal_detail_path(assigns(:personal_detail))
  end

  test "should destroy personal_detail" do
    assert_difference('PersonalDetail.count', -1) do
      delete :destroy, id: @personal_detail
    end

    assert_redirected_to personal_details_path
  end
end
