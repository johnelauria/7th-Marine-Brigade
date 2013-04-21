require 'test_helper'

class SecurityTagApplicationsControllerTest < ActionController::TestCase
  setup do
    @security_tag_application = security_tag_applications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:security_tag_applications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create security_tag_application" do
    assert_difference('SecurityTagApplication.count') do
      post :create, security_tag_application: { cellphone_notify: @security_tag_application.cellphone_notify, city_address: @security_tag_application.city_address, city_cellphone: @security_tag_application.city_cellphone, city_telephone: @security_tag_application.city_telephone, date_reported: @security_tag_application.date_reported, name_to_notify: @security_tag_application.name_to_notify, office_division: @security_tag_application.office_division, personal_detail_id: @security_tag_application.personal_detail_id, signed_at: @security_tag_application.signed_at, signed_on: @security_tag_application.signed_on, telephone_notify: @security_tag_application.telephone_notify }
    end

    assert_redirected_to security_tag_application_path(assigns(:security_tag_application))
  end

  test "should show security_tag_application" do
    get :show, id: @security_tag_application
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @security_tag_application
    assert_response :success
  end

  test "should update security_tag_application" do
    put :update, id: @security_tag_application, security_tag_application: { cellphone_notify: @security_tag_application.cellphone_notify, city_address: @security_tag_application.city_address, city_cellphone: @security_tag_application.city_cellphone, city_telephone: @security_tag_application.city_telephone, date_reported: @security_tag_application.date_reported, name_to_notify: @security_tag_application.name_to_notify, office_division: @security_tag_application.office_division, personal_detail_id: @security_tag_application.personal_detail_id, signed_at: @security_tag_application.signed_at, signed_on: @security_tag_application.signed_on, telephone_notify: @security_tag_application.telephone_notify }
    assert_redirected_to security_tag_application_path(assigns(:security_tag_application))
  end

  test "should destroy security_tag_application" do
    assert_difference('SecurityTagApplication.count', -1) do
      delete :destroy, id: @security_tag_application
    end

    assert_redirected_to security_tag_applications_path
  end
end
