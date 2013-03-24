require 'test_helper'

class EmploymentsControllerTest < ActionController::TestCase
  setup do
    @employment = employments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employment" do
    assert_difference('Employment.count') do
      post :create, employment: { address: @employment.address, employment_date: @employment.employment_date, name: @employment.name, nature_of_leaving: @employment.nature_of_leaving, personal_detail_id: @employment.personal_detail_id, retirement: @employment.retirement, type_of_employment: @employment.type_of_employment }
    end

    assert_redirected_to employment_path(assigns(:employment))
  end

  test "should show employment" do
    get :show, id: @employment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employment
    assert_response :success
  end

  test "should update employment" do
    put :update, id: @employment, employment: { address: @employment.address, employment_date: @employment.employment_date, name: @employment.name, nature_of_leaving: @employment.nature_of_leaving, personal_detail_id: @employment.personal_detail_id, retirement: @employment.retirement, type_of_employment: @employment.type_of_employment }
    assert_redirected_to employment_path(assigns(:employment))
  end

  test "should destroy employment" do
    assert_difference('Employment.count', -1) do
      delete :destroy, id: @employment
    end

    assert_redirected_to employments_path
  end
end
