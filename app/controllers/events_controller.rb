class EventsController < ApplicationController
 
  def index
    @events = Event.all
  end

  def show
  end

  def new
    @event = Event.new
  end

  def edit
  end

  def create
    @event = Event.new(event_params)
    # Add save and redirect
  end

  def update
    # Add update
  end

  def destroy
    @event.destroy
    # Add destroy and redirect
  end

  protected

  def event_params
    params[:event]
    # Add white list params
  end
end
