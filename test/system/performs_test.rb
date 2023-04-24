require "application_system_test_case"

class PerformsTest < ApplicationSystemTestCase
  setup do
    @perform = performs(:one)
  end

  test "visiting the index" do
    visit performs_url
    assert_selector "h1", text: "Performs"
  end

  test "should create perform" do
    visit performs_url
    click_on "New perform"

    fill_in "Address", with: @perform.address
    fill_in "Name", with: @perform.name
    click_on "Create Perform"

    assert_text "Perform was successfully created"
    click_on "Back"
  end

  test "should update Perform" do
    visit perform_url(@perform)
    click_on "Edit this perform", match: :first

    fill_in "Address", with: @perform.address
    fill_in "Name", with: @perform.name
    click_on "Update Perform"

    assert_text "Perform was successfully updated"
    click_on "Back"
  end

  test "should destroy Perform" do
    visit perform_url(@perform)
    click_on "Destroy this perform", match: :first

    assert_text "Perform was successfully destroyed"
  end
end
