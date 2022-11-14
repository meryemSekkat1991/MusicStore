require "application_system_test_case"

class PlayListsTest < ApplicationSystemTestCase
  setup do
    @play_list = play_lists(:one)
  end

  test "visiting the index" do
    visit play_lists_url
    assert_selector "h1", text: "Play lists"
  end

  test "should create play list" do
    visit play_lists_url
    click_on "New play list"

    fill_in "Title", with: @play_list.title
    click_on "Create Play list"

    assert_text "Play list was successfully created"
    click_on "Back"
  end

  test "should update Play list" do
    visit play_list_url(@play_list)
    click_on "Edit this play list", match: :first

    fill_in "Title", with: @play_list.title
    click_on "Update Play list"

    assert_text "Play list was successfully updated"
    click_on "Back"
  end

  test "should destroy Play list" do
    visit play_list_url(@play_list)
    click_on "Destroy this play list", match: :first

    assert_text "Play list was successfully destroyed"
  end
end
