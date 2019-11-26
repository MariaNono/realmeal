class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    #@events = Event.all

    @events = Event.geocoded

    @markers = @events.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude
      }
    end
  end

  def show
    @booking = Booking.new
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    if @event.save!
      #redirect ...
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @space.destroy
    #redirect...
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:events).permit(:name, :event_date, :description, :cuisine, :price_per_guest, :max_guests, :address, :photo)
  end
end
