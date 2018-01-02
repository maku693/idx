require 'test_helper'

class EventTest < ActiveSupport::TestCase
  test "should save with full information" do
    event = Event.new(body: 'Text', title: 'String', password: 'String')
    assert event.save, 'Failed to save the event'
  end

  test "should not save the event without title" do
    event = Event.new(body: 'Text', password: 'String')
    assert_not event.save, 'Saved the event without the title'
  end

  test "should not save the event without body" do
    event = Event.new(title: 'string', password: 'String')
    assert_not event.save, 'Saved the event without the body'
  end

  test "should not save the event without password" do
    event = Event.new(title: 'String', body: 'Text')
    assert_not event.save, 'Saved the event without the password'
  end
end
