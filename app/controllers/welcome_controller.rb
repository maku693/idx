class WelcomeController < ApplicationController
  # GET /
  def index
    @event = Event.new
  end
end
