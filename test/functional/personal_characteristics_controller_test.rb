require 'test_helper'

class PersonalCharacteristicsControllerTest < ActionController::TestCase
  setup do
    @personal_characteristic = personal_characteristics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personal_characteristics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personal_characteristic" do
    assert_difference('PersonalCharacteristic.count') do
      post :create, personal_characteristic: { age: @personal_characteristic.age, build: @personal_characteristic.build, color_of_eyes: @personal_characteristic.color_of_eyes, color_of_hair: @personal_characteristic.color_of_hair, height: @personal_characteristic.height, physical_or_mental_defect: @personal_characteristic.physical_or_mental_defect, recent_serious_illness: @personal_characteristic.recent_serious_illness, scars_or_marks: @personal_characteristic.scars_or_marks, sex: @personal_characteristic.sex, state_of_health: @personal_characteristic.state_of_health, weight: @personal_characteristic.weight }
    end

    assert_redirected_to personal_characteristic_path(assigns(:personal_characteristic))
  end

  test "should show personal_characteristic" do
    get :show, id: @personal_characteristic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @personal_characteristic
    assert_response :success
  end

  test "should update personal_characteristic" do
    put :update, id: @personal_characteristic, personal_characteristic: { age: @personal_characteristic.age, build: @personal_characteristic.build, color_of_eyes: @personal_characteristic.color_of_eyes, color_of_hair: @personal_characteristic.color_of_hair, height: @personal_characteristic.height, physical_or_mental_defect: @personal_characteristic.physical_or_mental_defect, recent_serious_illness: @personal_characteristic.recent_serious_illness, scars_or_marks: @personal_characteristic.scars_or_marks, sex: @personal_characteristic.sex, state_of_health: @personal_characteristic.state_of_health, weight: @personal_characteristic.weight }
    assert_redirected_to personal_characteristic_path(assigns(:personal_characteristic))
  end

  test "should destroy personal_characteristic" do
    assert_difference('PersonalCharacteristic.count', -1) do
      delete :destroy, id: @personal_characteristic
    end

    assert_redirected_to personal_characteristics_path
  end
end
