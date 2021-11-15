require "application_system_test_case"

class SubEventsTest < ApplicationSystemTestCase
  setup do
    @sub_event = sub_events(:one)
  end

  test "visiting the index" do
    visit sub_events_url
    assert_selector "h1", text: "Sub Events"
  end

  test "creating a Sub event" do
    visit sub_events_url
    click_on "New Sub Event"

    fill_in "Name", with: @sub_event.name
    click_on "Create Sub event"

    assert_text "Sub event was successfully created"
    click_on "Back"
  end

  test "updating a Sub event" do
    visit sub_events_url
    click_on "Edit", match: :first

    fill_in "Name", with: @sub_event.name
    click_on "Update Sub event"

    assert_text "Sub event was successfully updated"
    click_on "Back"
  end

  test "destroying a Sub event" do
    visit sub_events_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sub event was successfully destroyed"
  end
end
