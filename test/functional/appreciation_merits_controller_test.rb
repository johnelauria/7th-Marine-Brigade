require 'test_helper'

class AppreciationMeritsControllerTest < ActionController::TestCase
  setup do
    @appreciation_merit = appreciation_merits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:appreciation_merits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create appreciation_merit" do
    assert_difference('AppreciationMerit.count') do
      post :create, appreciation_merit: { awarded_by: @appreciation_merit.awarded_by, date_received: @appreciation_merit.date_received, soi_form_id: @appreciation_merit.soi_form_id }
    end

    assert_redirected_to appreciation_merit_path(assigns(:appreciation_merit))
  end

  test "should show appreciation_merit" do
    get :show, id: @appreciation_merit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @appreciation_merit
    assert_response :success
  end

  test "should update appreciation_merit" do
    put :update, id: @appreciation_merit, appreciation_merit: { awarded_by: @appreciation_merit.awarded_by, date_received: @appreciation_merit.date_received, soi_form_id: @appreciation_merit.soi_form_id }
    assert_redirected_to appreciation_merit_path(assigns(:appreciation_merit))
  end

  test "should destroy appreciation_merit" do
    assert_difference('AppreciationMerit.count', -1) do
      delete :destroy, id: @appreciation_merit
    end

    assert_redirected_to appreciation_merits_path
  end
end
