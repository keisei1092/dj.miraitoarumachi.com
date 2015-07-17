class EventsController < ApplicationController
  def index
    @events = Event.all
  end
  def new
    @event = Event.new
  end
  def show
    @event = Event.find(params[:id])
    @volumes = Volume.where(:event_id => params[:id])
    @volume = Volume.new
    @volume.event_id = params[:id]
  end
  def edit
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.new(params[:event])
    if @event.save
      redirect_to @event
    else
      render "new"
    end
  end
  def update
    @event = Event.find(params[:id])
    if @event.update(params.require(:event).permit(:name))
      redirect_to @event
    else
      render :action => 'edit'
    end
  end
end
