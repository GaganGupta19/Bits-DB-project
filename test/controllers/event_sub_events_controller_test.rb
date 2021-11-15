require "test_helper"

class EventSubEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event_sub_event = event_sub_events(:one)
  end

  test "should get index" do
    get event_sub_events_url
    assert_response :success
  end

  test "should get new" do
    get new_event_sub_event_url
    assert_response :success
  end

  test "should create event_sub_event" do
    assert_difference('EventSubEvent.count') do
      post event_sub_events_url, params: { event_sub_event: { event: @event_sub_event.event, sub_event: @event_sub_event.sub_event } }
    end

    assert_redirected_to event_sub_event_url(EventSubEvent.last)
  end

  test "should show event_sub_event" do
    get event_sub_event_url(@event_sub_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_sub_event_url(@event_sub_event)
    assert_response :success
  end

  test "should update event_sub_event" do
    patch event_sub_event_url(@event_sub_event), params: { event_sub_event: { event: @event_sub_event.event, sub_event: @event_sub_event.sub_event } }
    assert_redirected_to event_sub_event_url(@event_sub_event)
  end

  test "should destroy event_sub_event" do
    assert_difference('EventSubEvent.count', -1) do
      delete event_sub_event_url(@event_sub_event)
    end

    assert_redirected_to event_sub_events_url
  end
end
