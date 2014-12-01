class EventsController < ApplicationController
  def new
    @events = Event.new
end

  def index
  @events = Event.all
  end

def create
  @events = Event.new(event_params)
  if @event.save
    redirect_to events_path
  else
    render :new
end
end


private
  def event_params
    params.require(:event).permit(

  :date,
  :description,
  :requires_id,
  :capacity,
  :directions,
    )
  end


end
