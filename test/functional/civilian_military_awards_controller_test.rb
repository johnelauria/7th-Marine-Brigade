require 'test_helper'

class CivilianMilitaryAwardsControllerTest < ActionController::TestCase
  setup do
    @civilian_military_award = civilian_military_awards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:civilian_military_awards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create civilian_military_award" do
    assert_difference('CivilianMilitaryAward.count') do
      post :create, civilian_military_award: { authority: @civilian_military_award.authority, category: @civilian_military_award.category, date_awarded: @civilian_military_award.date_awarded, rid_id: @civilian_military_award.rid_id, type_of_award: @civilian_military_award.type_of_award }
    end

    assert_redirected_to civilian_military_award_path(assigns(:civilian_military_award))
  end

  test "should show civilian_military_award" do
    get :show, id: @civilian_military_award
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @civilian_military_award
    assert_response :success
  end

  test "should update civilian_military_award" do
    put :update, id: @civilian_military_award, civilian_military_award: { authority: @civilian_military_award.authority, category: @civilian_military_award.category, date_awarded: @civilian_military_award.date_awarded, rid_id: @civilian_military_award.rid_id, type_of_award: @civilian_military_award.type_of_award }
    assert_redirected_to civilian_military_award_path(assigns(:civilian_military_award))
  end

  test "should destroy civilian_military_award" do
    assert_difference('CivilianMilitaryAward.count', -1) do
      delete :destroy, id: @civilian_military_award
    end

    assert_redirected_to civilian_military_awards_path
  end
end
