require 'test_helper'

class MiscellaneousControllerTest < ActionController::TestCase
  setup do
    @miscellaneou = miscellaneous(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:miscellaneous)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create miscellaneou" do
    assert_difference('Miscellaneou.count') do
      post :create, miscellaneou: { hobbies: @miscellaneou.hobbies, lie_detection_test: @miscellaneou.lie_detection_test, personal_detail_id: @miscellaneou.personal_detail_id }
    end

    assert_redirected_to miscellaneou_path(assigns(:miscellaneou))
  end

  test "should show miscellaneou" do
    get :show, id: @miscellaneou
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @miscellaneou
    assert_response :success
  end

  test "should update miscellaneou" do
    put :update, id: @miscellaneou, miscellaneou: { hobbies: @miscellaneou.hobbies, lie_detection_test: @miscellaneou.lie_detection_test, personal_detail_id: @miscellaneou.personal_detail_id }
    assert_redirected_to miscellaneou_path(assigns(:miscellaneou))
  end

  test "should destroy miscellaneou" do
    assert_difference('Miscellaneou.count', -1) do
      delete :destroy, id: @miscellaneou
    end

    assert_redirected_to miscellaneous_path
  end
end
