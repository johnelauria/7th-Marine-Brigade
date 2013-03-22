require 'test_helper'

class BrothersAndSistersControllerTest < ActionController::TestCase
  setup do
    @brothers_and_sister = brothers_and_sisters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:brothers_and_sisters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create brothers_and_sister" do
    assert_difference('BrothersAndSister.count') do
      post :create, brothers_and_sister: { address: @brothers_and_sister.address, age: @brothers_and_sister.age, family_history_id: @brothers_and_sister.family_history_id, name: @brothers_and_sister.name, occupation: @brothers_and_sister.occupation }
    end

    assert_redirected_to brothers_and_sister_path(assigns(:brothers_and_sister))
  end

  test "should show brothers_and_sister" do
    get :show, id: @brothers_and_sister
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @brothers_and_sister
    assert_response :success
  end

  test "should update brothers_and_sister" do
    put :update, id: @brothers_and_sister, brothers_and_sister: { address: @brothers_and_sister.address, age: @brothers_and_sister.age, family_history_id: @brothers_and_sister.family_history_id, name: @brothers_and_sister.name, occupation: @brothers_and_sister.occupation }
    assert_redirected_to brothers_and_sister_path(assigns(:brothers_and_sister))
  end

  test "should destroy brothers_and_sister" do
    assert_difference('BrothersAndSister.count', -1) do
      delete :destroy, id: @brothers_and_sister
    end

    assert_redirected_to brothers_and_sisters_path
  end
end
