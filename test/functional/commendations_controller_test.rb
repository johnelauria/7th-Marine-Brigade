require 'test_helper'

class CommendationsControllerTest < ActionController::TestCase
  setup do
    @commendation = commendations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:commendations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create commendation" do
    assert_difference('Commendation.count') do
      post :create, commendation: { awarded_by: @commendation.awarded_by, date_received: @commendation.date_received, soi_form_id: @commendation.soi_form_id }
    end

    assert_redirected_to commendation_path(assigns(:commendation))
  end

  test "should show commendation" do
    get :show, id: @commendation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @commendation
    assert_response :success
  end

  test "should update commendation" do
    put :update, id: @commendation, commendation: { awarded_by: @commendation.awarded_by, date_received: @commendation.date_received, soi_form_id: @commendation.soi_form_id }
    assert_redirected_to commendation_path(assigns(:commendation))
  end

  test "should destroy commendation" do
    assert_difference('Commendation.count', -1) do
      delete :destroy, id: @commendation
    end

    assert_redirected_to commendations_path
  end
end
