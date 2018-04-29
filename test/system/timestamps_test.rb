require "application_system_test_case"

class TimestampsTest < ApplicationSystemTestCase
  setup do
    @timestamp = timestamps(:one)
  end

  test "visiting the index" do
    visit timestamps_url
    assert_selector "h1", text: "Timestamps"
  end

  test "creating a Timestamp" do
    visit timestamps_url
    click_on "New Timestamp"

    fill_in "Comment", with: @timestamp.comment
    fill_in "Episode", with: @timestamp.episode_id
    fill_in "Start", with: @timestamp.start
    click_on "Create Timestamp"

    assert_text "Timestamp was successfully created"
    click_on "Back"
  end

  test "updating a Timestamp" do
    visit timestamps_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @timestamp.comment
    fill_in "Episode", with: @timestamp.episode_id
    fill_in "Start", with: @timestamp.start
    click_on "Update Timestamp"

    assert_text "Timestamp was successfully updated"
    click_on "Back"
  end

  test "destroying a Timestamp" do
    visit timestamps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Timestamp was successfully destroyed"
  end
end
