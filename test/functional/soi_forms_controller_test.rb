require 'test_helper'

class SoiFormsControllerTest < ActionController::TestCase
  setup do
    @soi_form = soi_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:soi_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create soi_form" do
    assert_difference('SoiForm.count') do
      post :create, soi_form: { active_comsd_svc: @soi_form.active_comsd_svc, date_of_compulsory_retirement: @soi_form.date_of_compulsory_retirement, length_of_military: @soi_form.length_of_military, next_of_kin: @soi_form.next_of_kin, personal_detail_id: @soi_form.personal_detail_id, postal_address: @soi_form.postal_address, postal_area_code: @soi_form.postal_area_code, postal_tel_num: @soi_form.postal_tel_num, remarks: @soi_form.remarks, statement_of_service_remarks: @soi_form.statement_of_service_remarks }
    end

    assert_redirected_to soi_form_path(assigns(:soi_form))
  end

  test "should show soi_form" do
    get :show, id: @soi_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @soi_form
    assert_response :success
  end

  test "should update soi_form" do
    put :update, id: @soi_form, soi_form: { active_comsd_svc: @soi_form.active_comsd_svc, date_of_compulsory_retirement: @soi_form.date_of_compulsory_retirement, length_of_military: @soi_form.length_of_military, next_of_kin: @soi_form.next_of_kin, personal_detail_id: @soi_form.personal_detail_id, postal_address: @soi_form.postal_address, postal_area_code: @soi_form.postal_area_code, postal_tel_num: @soi_form.postal_tel_num, remarks: @soi_form.remarks, statement_of_service_remarks: @soi_form.statement_of_service_remarks }
    assert_redirected_to soi_form_path(assigns(:soi_form))
  end

  test "should destroy soi_form" do
    assert_difference('SoiForm.count', -1) do
      delete :destroy, id: @soi_form
    end

    assert_redirected_to soi_forms_path
  end
end
