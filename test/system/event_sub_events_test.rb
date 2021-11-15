require "application_system_test_case"

class EventSubEventsTest < ApplicationSystemTestCase
  setup do
    @event_sub_event = event_sub_events(:one)
  end

  test "visiting the index" do
    visit event_sub_events_url
    assert_selector "h1", text: "Event Sub Events"
  end

  test "creating a Event sub event" do
    visit event_sub_events_url
    click_on "New Event Sub Event"

    fill_in "Event", with: @event_sub_event.event
    fill_in "Sub event", with: @event_sub_event.sub_event
    click_on "Create Event sub event"

    assert_text "Event sub event was successfully created"
    click_on "Back"
  end

  test "updating a Event sub event" do
    visit event_sub_events_url
    click_on "Edit", match: :first

    fill_in "Event", with: @event_sub_event.event
    fill_in "Sub event", with: @event_sub_event.sub_event
    click_on "Update Event sub event"

    assert_text "Event sub event was successfully updated"
    click_on "Back"
  end

  test "destroying a Event sub event" do
    visit event_sub_events_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Event sub event was successfully destroyed"
  end
end
