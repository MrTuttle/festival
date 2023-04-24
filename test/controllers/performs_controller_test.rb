require "test_helper"

class PerformsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @perform = performs(:one)
  end

  test "should get index" do
    get performs_url
    assert_response :success
  end

  test "should get new" do
    get new_perform_url
    assert_response :success
  end

  test "should create perform" do
    assert_difference("Perform.count") do
      post performs_url, params: { perform: { address: @perform.address, name: @perform.name } }
    end

    assert_redirected_to perform_url(Perform.last)
  end

  test "should show perform" do
    get perform_url(@perform)
    assert_response :success
  end

  test "should get edit" do
    get edit_perform_url(@perform)
    assert_response :success
  end

  test "should update perform" do
    patch perform_url(@perform), params: { perform: { address: @perform.address, name: @perform.name } }
    assert_redirected_to perform_url(@perform)
  end

  test "should destroy perform" do
    assert_difference("Perform.count", -1) do
      delete perform_url(@perform)
    end

    assert_redirected_to performs_url
  end
end
