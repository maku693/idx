class EventsController < ApplicationController
  # GET /events/1
  def show
    @event = Event.includes(:participants).find_by_slug!(params[:slug])
    @participant = Participant.new
  end

  # POST /events
  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to @event, notice: "Event was successfully created"
    else
      render :new
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:slug, :title, :body)
    end
end
