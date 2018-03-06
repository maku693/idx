require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event = events(:one)
  end

  test "should create event" do
    assert_difference('Event.count') do
      post events_url, params: { event: { slug: 'String', title: 'String', body: 'Text' } }
    end

    assert_redirected_to event_url(Event.last)
  end

  test "should show event" do
    get event_url(@event)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_url(@event)
    assert_response :success
  end

  test "should update event" do
    patch event_url(@event), params: { event: { title: 'String', body: 'Text' } }
    assert_redirected_to event_url(@event)
  end
end
