class ParticipantsController < ApplicationController
  before_action :set_event
  before_action :authenticate

  # POST /events/1/participant
  def create
    if @event.participants.create(participant_params)
      redirect_to @event, notice: 'Participation registered'
    else
      render 'events/show'
    end
  end

  private
    def set_event
      @event = Event.find(params[:event_id])
    end

    def authenticate
      render 'events/show' unless @event.authenticate(params[:password])
    end

    def participant_params
      params.require(:participant).permit(:name)
    end
end
