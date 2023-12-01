require "application_system_test_case"

class NotepadsTest < ApplicationSystemTestCase
  setup do
    @notepad = notepads(:one)
  end

  test "visiting the index" do
    visit notepads_url
    assert_selector "h1", text: "Notepads"
  end

  test "should create notepad" do
    visit notepads_url
    click_on "New notepad"

    click_on "Create Notepad"

    assert_text "Notepad was successfully created"
    click_on "Back"
  end

  test "should update Notepad" do
    visit notepad_url(@notepad)
    click_on "Edit this notepad", match: :first

    click_on "Update Notepad"

    assert_text "Notepad was successfully updated"
    click_on "Back"
  end

  test "should destroy Notepad" do
    visit notepad_url(@notepad)
    click_on "Destroy this notepad", match: :first

    assert_text "Notepad was successfully destroyed"
  end
end
