require 'test_helper'

class TimestampsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @timestamp = timestamps(:one)
  end

  test "should get index" do
    get timestamps_url
    assert_response :success
  end

  test "should get new" do
    get new_timestamp_url
    assert_response :success
  end

  test "should create timestamp" do
    assert_difference('Timestamp.count') do
      post timestamps_url, params: { timestamp: { comment: @timestamp.comment, episode_id: @timestamp.episode_id, start: @timestamp.start } }
    end

    assert_redirected_to timestamp_url(Timestamp.last)
  end

  test "should show timestamp" do
    get timestamp_url(@timestamp)
    assert_response :success
  end

  test "should get edit" do
    get edit_timestamp_url(@timestamp)
    assert_response :success
  end

  test "should update timestamp" do
    patch timestamp_url(@timestamp), params: { timestamp: { comment: @timestamp.comment, episode_id: @timestamp.episode_id, start: @timestamp.start } }
    assert_redirected_to timestamp_url(@timestamp)
  end

  test "should destroy timestamp" do
    assert_difference('Timestamp.count', -1) do
      delete timestamp_url(@timestamp)
    end

    assert_redirected_to timestamps_url
  end
end
