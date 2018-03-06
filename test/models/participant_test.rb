require 'test_helper'

class ParticipantTest < ActiveSupport::TestCase
  test "should save with full information" do
    participant = Participant.new(event: events(:one), name: 'Raiden')
    assert participant.save, 'Failed to save the participant'
  end

  test "should not save without belonging event" do
    participant = Participant.new
    assert_not participant.save, "Saved the participant without it's belonging event"
  end
end
