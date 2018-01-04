require 'test_helper'

class ParticipantsControllerTest < ActionDispatch::IntegrationTest
  test "should create participant" do
    event = events(:one)

    assert_difference 'Participant.count' do
      post event_participants_path(event), params: { participant: { name: 'Gray Fox' } }
    end

    assert_redirected_to event_url(event)
  end
end
