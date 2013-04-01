require 'test_helper'

class PromotionDemotionsControllerTest < ActionController::TestCase
  setup do
    @promotion_demotion = promotion_demotions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:promotion_demotions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create promotion_demotion" do
    assert_difference('PromotionDemotion.count') do
      post :create, promotion_demotion: { authority: @promotion_demotion.authority, effectivity: @promotion_demotion.effectivity, from: @promotion_demotion.from, rank: @promotion_demotion.rank, rid_id: @promotion_demotion.rid_id, to: @promotion_demotion.to }
    end

    assert_redirected_to promotion_demotion_path(assigns(:promotion_demotion))
  end

  test "should show promotion_demotion" do
    get :show, id: @promotion_demotion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @promotion_demotion
    assert_response :success
  end

  test "should update promotion_demotion" do
    put :update, id: @promotion_demotion, promotion_demotion: { authority: @promotion_demotion.authority, effectivity: @promotion_demotion.effectivity, from: @promotion_demotion.from, rank: @promotion_demotion.rank, rid_id: @promotion_demotion.rid_id, to: @promotion_demotion.to }
    assert_redirected_to promotion_demotion_path(assigns(:promotion_demotion))
  end

  test "should destroy promotion_demotion" do
    assert_difference('PromotionDemotion.count', -1) do
      delete :destroy, id: @promotion_demotion
    end

    assert_redirected_to promotion_demotions_path
  end
end
