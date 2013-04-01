require 'test_helper'

class RidsControllerTest < ActionController::TestCase
  setup do
    @rid = rids(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rids)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rid" do
    assert_difference('Rid.count') do
      post :create, rid: { blood_type: @rid.blood_type, gsis: @rid.gsis, person_to_notify: @rid.person_to_notify, personal_detail_id: @rid.personal_detail_id, philhealth: @rid.philhealth, province: @rid.province, province_contact: @rid.province_contact, religion: @rid.religion, size_of_bdu: @rid.size_of_bdu, size_of_cap: @rid.size_of_cap, size_of_combat: @rid.size_of_combat, sss: @rid.sss, tin: @rid.tin }
    end

    assert_redirected_to rid_path(assigns(:rid))
  end

  test "should show rid" do
    get :show, id: @rid
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rid
    assert_response :success
  end

  test "should update rid" do
    put :update, id: @rid, rid: { blood_type: @rid.blood_type, gsis: @rid.gsis, person_to_notify: @rid.person_to_notify, personal_detail_id: @rid.personal_detail_id, philhealth: @rid.philhealth, province: @rid.province, province_contact: @rid.province_contact, religion: @rid.religion, size_of_bdu: @rid.size_of_bdu, size_of_cap: @rid.size_of_cap, size_of_combat: @rid.size_of_combat, sss: @rid.sss, tin: @rid.tin }
    assert_redirected_to rid_path(assigns(:rid))
  end

  test "should destroy rid" do
    assert_difference('Rid.count', -1) do
      delete :destroy, id: @rid
    end

    assert_redirected_to rids_path
  end
end
