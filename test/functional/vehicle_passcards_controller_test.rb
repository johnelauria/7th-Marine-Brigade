require 'test_helper'

class VehiclePasscardsControllerTest < ActionController::TestCase
  setup do
    @vehicle_passcard = vehicle_passcards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vehicle_passcards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vehicle_passcard" do
    assert_difference('VehiclePasscard.count') do
      post :create, vehicle_passcard: { chassis_number: @vehicle_passcard.chassis_number, color: @vehicle_passcard.color, decal_number: @vehicle_passcard.decal_number, motor_number: @vehicle_passcard.motor_number, personal_detail_id: @vehicle_passcard.personal_detail_id, plate_number: @vehicle_passcard.plate_number, vehicle_make: @vehicle_passcard.vehicle_make, year_model: @vehicle_passcard.year_model }
    end

    assert_redirected_to vehicle_passcard_path(assigns(:vehicle_passcard))
  end

  test "should show vehicle_passcard" do
    get :show, id: @vehicle_passcard
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vehicle_passcard
    assert_response :success
  end

  test "should update vehicle_passcard" do
    put :update, id: @vehicle_passcard, vehicle_passcard: { chassis_number: @vehicle_passcard.chassis_number, color: @vehicle_passcard.color, decal_number: @vehicle_passcard.decal_number, motor_number: @vehicle_passcard.motor_number, personal_detail_id: @vehicle_passcard.personal_detail_id, plate_number: @vehicle_passcard.plate_number, vehicle_make: @vehicle_passcard.vehicle_make, year_model: @vehicle_passcard.year_model }
    assert_redirected_to vehicle_passcard_path(assigns(:vehicle_passcard))
  end

  test "should destroy vehicle_passcard" do
    assert_difference('VehiclePasscard.count', -1) do
      delete :destroy, id: @vehicle_passcard
    end

    assert_redirected_to vehicle_passcards_path
  end
end
