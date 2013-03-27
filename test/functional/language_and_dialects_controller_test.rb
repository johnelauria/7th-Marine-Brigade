require 'test_helper'

class LanguageAndDialectsControllerTest < ActionController::TestCase
  setup do
    @language_and_dialect = language_and_dialects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:language_and_dialects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create language_and_dialect" do
    assert_difference('LanguageAndDialect.count') do
      post :create, language_and_dialect: { language: @language_and_dialect.language, miscellaneou_id: @language_and_dialect.miscellaneou_id, read: @language_and_dialect.read, speaks: @language_and_dialect.speaks, write: @language_and_dialect.write }
    end

    assert_redirected_to language_and_dialect_path(assigns(:language_and_dialect))
  end

  test "should show language_and_dialect" do
    get :show, id: @language_and_dialect
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @language_and_dialect
    assert_response :success
  end

  test "should update language_and_dialect" do
    put :update, id: @language_and_dialect, language_and_dialect: { language: @language_and_dialect.language, miscellaneou_id: @language_and_dialect.miscellaneou_id, read: @language_and_dialect.read, speaks: @language_and_dialect.speaks, write: @language_and_dialect.write }
    assert_redirected_to language_and_dialect_path(assigns(:language_and_dialect))
  end

  test "should destroy language_and_dialect" do
    assert_difference('LanguageAndDialect.count', -1) do
      delete :destroy, id: @language_and_dialect
    end

    assert_redirected_to language_and_dialects_path
  end
end
