class VolumesController < ApplicationController
  def show
    @volume = Volume.find(params[:id])
    @event = Event.find(@volume.event_id)
    @setlist = Setlist.where(:volume_id => @volume.id)
  end

  def create
    @volume = Volume.new(params.require(:volume).permit(:number, :open))
    @volume.event_id = params[:event_id]
    if @volume.save
      redirect_to Event.find(@volume.event_id)
    else
      render "new"
    end
  end
end
