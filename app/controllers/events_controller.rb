class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @events = Event.geocoded
    unless params[:events].nil?
      if params[:events][:cuisine].present?
        @events = @events.select { |event| event.cuisine.capitalize == params[:events][:cuisine]}
      end
    end
    @events = @events.select { |event| event.status == "open" }

    @markers = @events.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        info_window: render_to_string(partial: "info_window", locals: { event: event })
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
    @event.destroy
    redirect_to mybookings_path
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:events).permit(:name, :event_date, :description, :cuisine, :price_per_guest, :max_guests, :address, :photo)
  end
end
