require "application_system_test_case"

class SingersTest < ApplicationSystemTestCase
  setup do
    @singer = singers(:one)
  end

  test "visiting the index" do
    visit singers_url
    assert_selector "h1", text: "Singers"
  end

  test "should create singer" do
    visit singers_url
    click_on "New singer"

    click_on "Create Singer"

    assert_text "Singer was successfully created"
    click_on "Back"
  end

  test "should update Singer" do
    visit singer_url(@singer)
    click_on "Edit this singer", match: :first

    click_on "Update Singer"

    assert_text "Singer was successfully updated"
    click_on "Back"
  end

  test "should destroy Singer" do
    visit singer_url(@singer)
    click_on "Destroy this singer", match: :first

    assert_text "Singer was successfully destroyed"
  end
end
