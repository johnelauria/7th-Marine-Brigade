require 'test_helper'

class GeneralInformationsControllerTest < ActionController::TestCase
  setup do
    @general_information = general_informations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:general_informations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create general_information" do
    assert_difference('GeneralInformation.count') do
      post :create, general_information: { personal_detail_id: @general_information.personal_detail_id, reference_address1: @general_information.reference_address1, reference_address2: @general_information.reference_address2, reference_address3: @general_information.reference_address3, reference_address4: @general_information.reference_address4, reference_address5: @general_information.reference_address5, reference_name1: @general_information.reference_name1, reference_name2: @general_information.reference_name2, reference_name3: @general_information.reference_name3, reference_name4: @general_information.reference_name4, reference_name5: @general_information.reference_name5 }
    end

    assert_redirected_to general_information_path(assigns(:general_information))
  end

  test "should show general_information" do
    get :show, id: @general_information
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @general_information
    assert_response :success
  end

  test "should update general_information" do
    put :update, id: @general_information, general_information: { personal_detail_id: @general_information.personal_detail_id, reference_address1: @general_information.reference_address1, reference_address2: @general_information.reference_address2, reference_address3: @general_information.reference_address3, reference_address4: @general_information.reference_address4, reference_address5: @general_information.reference_address5, reference_name1: @general_information.reference_name1, reference_name2: @general_information.reference_name2, reference_name3: @general_information.reference_name3, reference_name4: @general_information.reference_name4, reference_name5: @general_information.reference_name5 }
    assert_redirected_to general_information_path(assigns(:general_information))
  end

  test "should destroy general_information" do
    assert_difference('GeneralInformation.count', -1) do
      delete :destroy, id: @general_information
    end

    assert_redirected_to general_informations_path
  end
end
