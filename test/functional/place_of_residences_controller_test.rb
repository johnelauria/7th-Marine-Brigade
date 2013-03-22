require 'test_helper'

class PlaceOfResidencesControllerTest < ActionController::TestCase
  setup do
    @place_of_residence = place_of_residences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:place_of_residences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create place_of_residence" do
    assert_difference('PlaceOfResidence.count') do
      post :create, place_of_residence: { complete_address: @place_of_residence.complete_address, date_left: @place_of_residence.date_left, starting_date: @place_of_residence.starting_date }
    end

    assert_redirected_to place_of_residence_path(assigns(:place_of_residence))
  end

  test "should show place_of_residence" do
    get :show, id: @place_of_residence
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @place_of_residence
    assert_response :success
  end

  test "should update place_of_residence" do
    put :update, id: @place_of_residence, place_of_residence: { complete_address: @place_of_residence.complete_address, date_left: @place_of_residence.date_left, starting_date: @place_of_residence.starting_date }
    assert_redirected_to place_of_residence_path(assigns(:place_of_residence))
  end

  test "should destroy place_of_residence" do
    assert_difference('PlaceOfResidence.count', -1) do
      delete :destroy, id: @place_of_residence
    end

    assert_redirected_to place_of_residences_path
  end
end
