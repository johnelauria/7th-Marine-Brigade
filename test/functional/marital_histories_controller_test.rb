require 'test_helper'

class MaritalHistoriesControllerTest < ActionController::TestCase
  setup do
    @marital_history = marital_histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:marital_histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create marital_history" do
    assert_difference('MaritalHistory.count') do
      post :create, marital_history: { address: @marital_history.address, birth_date_place: @marital_history.birth_date_place, birthdate: @marital_history.birthdate, date_and_place_of_marriage: @marital_history.date_and_place_of_marriage, marital_status: @marital_history.marital_status, name: @marital_history.name, name_of_spouse: @marital_history.name_of_spouse, occupation_and_place_employment: @marital_history.occupation_and_place_employment }
    end

    assert_redirected_to marital_history_path(assigns(:marital_history))
  end

  test "should show marital_history" do
    get :show, id: @marital_history
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @marital_history
    assert_response :success
  end

  test "should update marital_history" do
    put :update, id: @marital_history, marital_history: { address: @marital_history.address, birth_date_place: @marital_history.birth_date_place, birthdate: @marital_history.birthdate, date_and_place_of_marriage: @marital_history.date_and_place_of_marriage, marital_status: @marital_history.marital_status, name: @marital_history.name, name_of_spouse: @marital_history.name_of_spouse, occupation_and_place_employment: @marital_history.occupation_and_place_employment }
    assert_redirected_to marital_history_path(assigns(:marital_history))
  end

  test "should destroy marital_history" do
    assert_difference('MaritalHistory.count', -1) do
      delete :destroy, id: @marital_history
    end

    assert_redirected_to marital_histories_path
  end
end
