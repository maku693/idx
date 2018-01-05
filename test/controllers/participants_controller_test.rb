require 'test_helper'

class ParticipantsControllerTest < ActionDispatch::IntegrationTest
  test "should create participant" do
    event = events(:one)

    assert_difference 'Participant.count' do
      post event_participants_path(event), params: { participant: { name: 'Gray Fox' } }
    end

    assert_redirected_to event_url(event)
  end

  test "should destroy participant" do
    event = events(:one)
    participant = event.participants.last

    assert_difference 'Participant.count', -1 do
      delete event_participant_path(event, participant)
    end

    assert_redirected_to event_url(event)
  end
end
