require 'test_helper'

class EventTest < ActiveSupport::TestCase
  test "should save with full information" do
    event = Event.new(slug: 'String', body: 'Text', title: 'String')
    assert event.save, 'Failed to save the event'
  end

  test "should not save the event without slug" do
    event = Event.new(body: 'Text', title: 'String')
    assert_not event.save, 'Failed to save the event'
  end

  test "should not save the event without title" do
    event = Event.new(slug: 'String', body: 'Text')
    assert_not event.save, 'Saved the event without the title'
  end

  test "should not save the event without body" do
    event = Event.new(slug: 'String', title: 'String')
    assert_not event.save, 'Saved the event without the body'
  end

  test "should create participant" do
    event = events(:one)
    assert event.participants.create(name: 'Liquid'), 'Failed to save the participant'
  end
end
