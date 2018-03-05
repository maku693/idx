class EventsController < ApplicationController
  expose :event, find_by: :slug, id: :slug
  expose :event_with_participants, -> { Event.includes(:participants).find_by_slug!(params[:slug]) }
  expose :participant

  # POST /events
  def create
    if verify_recaptcha(model: event, attribute: :recaptcha) && event.save
      redirect_to event, notice: I18n.t('events.create.notice')
    else
      render :new
    end
  end

  # GET /events/one/edit
  def update
    if event.update(event_params)
      redirect_to event, notice: I18n.t('events.update.notice')
    else
      render :edit
    end
  end

  private
    def event_params
      params.require(:event).permit(:title, :body)
    end
end
