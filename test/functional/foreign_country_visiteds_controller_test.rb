require 'test_helper'

class ForeignCountryVisitedsControllerTest < ActionController::TestCase
  setup do
    @foreign_country_visited = foreign_country_visiteds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:foreign_country_visiteds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create foreign_country_visited" do
    assert_difference('ForeignCountryVisited.count') do
      post :create, foreign_country_visited: { country_visited: @foreign_country_visited.country_visited, end_date: @foreign_country_visited.end_date, personal_detail_id: @foreign_country_visited.personal_detail_id, purpose_of_visit: @foreign_country_visited.purpose_of_visit, start_date: @foreign_country_visited.start_date }
    end

    assert_redirected_to foreign_country_visited_path(assigns(:foreign_country_visited))
  end

  test "should show foreign_country_visited" do
    get :show, id: @foreign_country_visited
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @foreign_country_visited
    assert_response :success
  end

  test "should update foreign_country_visited" do
    put :update, id: @foreign_country_visited, foreign_country_visited: { country_visited: @foreign_country_visited.country_visited, end_date: @foreign_country_visited.end_date, personal_detail_id: @foreign_country_visited.personal_detail_id, purpose_of_visit: @foreign_country_visited.purpose_of_visit, start_date: @foreign_country_visited.start_date }
    assert_redirected_to foreign_country_visited_path(assigns(:foreign_country_visited))
  end

  test "should destroy foreign_country_visited" do
    assert_difference('ForeignCountryVisited.count', -1) do
      delete :destroy, id: @foreign_country_visited
    end

    assert_redirected_to foreign_country_visiteds_path
  end
end
