require 'test_helper'

class ReceivedMilitaryAwardsControllerTest < ActionController::TestCase
  setup do
    @received_military_award = received_military_awards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:received_military_awards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create received_military_award" do
    assert_difference('ReceivedMilitaryAward.count') do
      post :create, received_military_award: { awards: @received_military_award.awards, military_history_id: @received_military_award.military_history_id }
    end

    assert_redirected_to received_military_award_path(assigns(:received_military_award))
  end

  test "should show received_military_award" do
    get :show, id: @received_military_award
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @received_military_award
    assert_response :success
  end

  test "should update received_military_award" do
    put :update, id: @received_military_award, received_military_award: { awards: @received_military_award.awards, military_history_id: @received_military_award.military_history_id }
    assert_redirected_to received_military_award_path(assigns(:received_military_award))
  end

  test "should destroy received_military_award" do
    assert_difference('ReceivedMilitaryAward.count', -1) do
      delete :destroy, id: @received_military_award
    end

    assert_redirected_to received_military_awards_path
  end
end
