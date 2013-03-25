require 'test_helper'

class CreditReputationsControllerTest < ActionController::TestCase
  setup do
    @credit_reputation = credit_reputations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:credit_reputations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create credit_reputation" do
    assert_difference('CreditReputation.count') do
      post :create, credit_reputation: { filed_assets_liabilities: @credit_reputation.filed_assets_liabilities, name_address_of_banks: @credit_reputation.name_address_of_banks, other_income: @credit_reputation.other_income, personal_detail_id: @credit_reputation.personal_detail_id, salary_defendant: @credit_reputation.salary_defendant, what_agency: @credit_reputation.what_agency }
    end

    assert_redirected_to credit_reputation_path(assigns(:credit_reputation))
  end

  test "should show credit_reputation" do
    get :show, id: @credit_reputation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @credit_reputation
    assert_response :success
  end

  test "should update credit_reputation" do
    put :update, id: @credit_reputation, credit_reputation: { filed_assets_liabilities: @credit_reputation.filed_assets_liabilities, name_address_of_banks: @credit_reputation.name_address_of_banks, other_income: @credit_reputation.other_income, personal_detail_id: @credit_reputation.personal_detail_id, salary_defendant: @credit_reputation.salary_defendant, what_agency: @credit_reputation.what_agency }
    assert_redirected_to credit_reputation_path(assigns(:credit_reputation))
  end

  test "should destroy credit_reputation" do
    assert_difference('CreditReputation.count', -1) do
      delete :destroy, id: @credit_reputation
    end

    assert_redirected_to credit_reputations_path
  end
end
