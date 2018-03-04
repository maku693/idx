class ParticipantsController < ApplicationController
  expose :event, find_by: :slug, id: :event_slug
  expose :participants, from: :event
  expose :participant

  # POST /events/one/participant
  def create
    if participants.create(participant_params)
      redirect_to event, notice: I18n.t('participants.create.notice')
    else
      render 'events/show'
    end
  end

  # DELETE /events/one/participant/1
  def destroy
    participant.destroy
    redirect_to event, notice: I18n.t('participants.destroy.notice')
  end

  private
    def participant_params
      params.require(:participant).permit(:event_id, :name)
    end
end
