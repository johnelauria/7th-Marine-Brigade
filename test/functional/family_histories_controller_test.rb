require 'test_helper'

class FamilyHistoriesControllerTest < ActionController::TestCase
  setup do
    @family_history = family_histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:family_histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create family_history" do
    assert_difference('FamilyHistory.count') do
      post :create, family_history: { address: @family_history.address, address: @family_history.address, father_citizenship: @family_history.father_citizenship, father_date_of_birth: @family_history.father_date_of_birth, father_in_law_address: @family_history.father_in_law_address, father_in_law_birth_date: @family_history.father_in_law_birth_date, father_in_law_citizenship: @family_history.father_in_law_citizenship, father_in_law_name: @family_history.father_in_law_name, father_in_law_naturalized: @family_history.father_in_law_naturalized, father_in_law_naturalized_date: @family_history.father_in_law_naturalized_date, father_in_law_naturalized_place: @family_history.father_in_law_naturalized_place, father_in_law_occupation: @family_history.father_in_law_occupation, father_in_law_place_of_birth: @family_history.father_in_law_place_of_birth, father_in_law_place_of_employment: @family_history.father_in_law_place_of_employment, father_name: @family_history.father_name, father_naturalized: @family_history.father_naturalized, father_naturalized_date: @family_history.father_naturalized_date, father_naturalized_place: @family_history.father_naturalized_place, father_occupation: @family_history.father_occupation, father_place_of_birth: @family_history.father_place_of_birth, father_place_of_employment: @family_history.father_place_of_employment, mother_citizenship: @family_history.mother_citizenship, mother_date_of_birth: @family_history.mother_date_of_birth, mother_in_law_address: @family_history.mother_in_law_address, mother_in_law_birth_date: @family_history.mother_in_law_birth_date, mother_in_law_citizenship: @family_history.mother_in_law_citizenship, mother_in_law_name: @family_history.mother_in_law_name, mother_in_law_naturalized: @family_history.mother_in_law_naturalized, mother_in_law_naturalized_date: @family_history.mother_in_law_naturalized_date, mother_in_law_naturalized_place: @family_history.mother_in_law_naturalized_place, mother_in_law_occupation: @family_history.mother_in_law_occupation, mother_in_law_place_of_birth: @family_history.mother_in_law_place_of_birth, mother_in_law_place_of_employment: @family_history.mother_in_law_place_of_employment, mother_name: @family_history.mother_name, mother_naturalized: @family_history.mother_naturalized, mother_naturalized_date: @family_history.mother_naturalized_date, mother_naturalized_place: @family_history.mother_naturalized_place, mother_occupation: @family_history.mother_occupation, mother_place_of_birth: @family_history.mother_place_of_birth, mother_place_of_employment: @family_history.mother_place_of_employment }
    end

    assert_redirected_to family_history_path(assigns(:family_history))
  end

  test "should show family_history" do
    get :show, id: @family_history
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @family_history
    assert_response :success
  end

  test "should update family_history" do
    put :update, id: @family_history, family_history: { address: @family_history.address, address: @family_history.address, father_citizenship: @family_history.father_citizenship, father_date_of_birth: @family_history.father_date_of_birth, father_in_law_address: @family_history.father_in_law_address, father_in_law_birth_date: @family_history.father_in_law_birth_date, father_in_law_citizenship: @family_history.father_in_law_citizenship, father_in_law_name: @family_history.father_in_law_name, father_in_law_naturalized: @family_history.father_in_law_naturalized, father_in_law_naturalized_date: @family_history.father_in_law_naturalized_date, father_in_law_naturalized_place: @family_history.father_in_law_naturalized_place, father_in_law_occupation: @family_history.father_in_law_occupation, father_in_law_place_of_birth: @family_history.father_in_law_place_of_birth, father_in_law_place_of_employment: @family_history.father_in_law_place_of_employment, father_name: @family_history.father_name, father_naturalized: @family_history.father_naturalized, father_naturalized_date: @family_history.father_naturalized_date, father_naturalized_place: @family_history.father_naturalized_place, father_occupation: @family_history.father_occupation, father_place_of_birth: @family_history.father_place_of_birth, father_place_of_employment: @family_history.father_place_of_employment, mother_citizenship: @family_history.mother_citizenship, mother_date_of_birth: @family_history.mother_date_of_birth, mother_in_law_address: @family_history.mother_in_law_address, mother_in_law_birth_date: @family_history.mother_in_law_birth_date, mother_in_law_citizenship: @family_history.mother_in_law_citizenship, mother_in_law_name: @family_history.mother_in_law_name, mother_in_law_naturalized: @family_history.mother_in_law_naturalized, mother_in_law_naturalized_date: @family_history.mother_in_law_naturalized_date, mother_in_law_naturalized_place: @family_history.mother_in_law_naturalized_place, mother_in_law_occupation: @family_history.mother_in_law_occupation, mother_in_law_place_of_birth: @family_history.mother_in_law_place_of_birth, mother_in_law_place_of_employment: @family_history.mother_in_law_place_of_employment, mother_name: @family_history.mother_name, mother_naturalized: @family_history.mother_naturalized, mother_naturalized_date: @family_history.mother_naturalized_date, mother_naturalized_place: @family_history.mother_naturalized_place, mother_occupation: @family_history.mother_occupation, mother_place_of_birth: @family_history.mother_place_of_birth, mother_place_of_employment: @family_history.mother_place_of_employment }
    assert_redirected_to family_history_path(assigns(:family_history))
  end

  test "should destroy family_history" do
    assert_difference('FamilyHistory.count', -1) do
      delete :destroy, id: @family_history
    end

    assert_redirected_to family_histories_path
  end
end
