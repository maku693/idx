class EventsController < ApplicationController
  # GET /events/1
  def show
    @event = Event.find(params[:id])
  end

  # POST /events
  def create
    @event = Event.new(event_params)
    @event.password = SecureRandom.base58
    if @event.save
      redirect_to @event, notice: "Event was successfully created with password: #{@event.password}"
    else
      render :new
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:title, :body)
    end
end
