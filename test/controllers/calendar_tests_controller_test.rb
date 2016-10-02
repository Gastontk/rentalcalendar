require 'test_helper'

class CalendarTestsControllerTest < ActionController::TestCase
  setup do
    @calendar_test = calendar_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:calendar_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create calendar_test" do
    assert_difference('CalendarTest.count') do
      post :create, calendar_test: { index: @calendar_test.index }
    end

    assert_redirected_to calendar_test_path(assigns(:calendar_test))
  end

  test "should show calendar_test" do
    get :show, id: @calendar_test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @calendar_test
    assert_response :success
  end

  test "should update calendar_test" do
    patch :update, id: @calendar_test, calendar_test: { index: @calendar_test.index }
    assert_redirected_to calendar_test_path(assigns(:calendar_test))
  end

  test "should destroy calendar_test" do
    assert_difference('CalendarTest.count', -1) do
      delete :destroy, id: @calendar_test
    end

    assert_redirected_to calendar_tests_path
  end
end
