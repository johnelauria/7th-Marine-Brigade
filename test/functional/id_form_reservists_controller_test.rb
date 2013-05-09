require 'test_helper'

class IdFormReservistsControllerTest < ActionController::TestCase
  setup do
    @id_form_reservist = id_form_reservists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:id_form_reservists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create id_form_reservist" do
    assert_difference('IdFormReservist.count') do
      post :create, id_form_reservist: { mother_maiden_firstname: @id_form_reservist.mother_maiden_firstname, mother_maiden_lastname: @id_form_reservist.mother_maiden_lastname, mother_maiden_middlename: @id_form_reservist.mother_maiden_middlename, other_identifying_data: @id_form_reservist.other_identifying_data, personal_detail_id: @id_form_reservist.personal_detail_id }
    end

    assert_redirected_to id_form_reservist_path(assigns(:id_form_reservist))
  end

  test "should show id_form_reservist" do
    get :show, id: @id_form_reservist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @id_form_reservist
    assert_response :success
  end

  test "should update id_form_reservist" do
    put :update, id: @id_form_reservist, id_form_reservist: { mother_maiden_firstname: @id_form_reservist.mother_maiden_firstname, mother_maiden_lastname: @id_form_reservist.mother_maiden_lastname, mother_maiden_middlename: @id_form_reservist.mother_maiden_middlename, other_identifying_data: @id_form_reservist.other_identifying_data, personal_detail_id: @id_form_reservist.personal_detail_id }
    assert_redirected_to id_form_reservist_path(assigns(:id_form_reservist))
  end

  test "should destroy id_form_reservist" do
    assert_difference('IdFormReservist.count', -1) do
      delete :destroy, id: @id_form_reservist
    end

    assert_redirected_to id_form_reservists_path
  end
end
