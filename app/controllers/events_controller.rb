require 'date'

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
    # @events = @events.select { |event| event.status == "open" }
    if params[:events][:date].present?
      @events = @events.select { |event| event.event_date >= params[:events][:date]}
    else
      @events = @events.select { |event| event.event_date >= DateTime.now }
    end

    @events = sort_by_date(@events)

    @markers = @events.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        info_window: render_to_string(partial: "info_window", locals: { event: event }),
        image_url: helpers.asset_url('cutlery.png')
      }
    end

    cuisines = Event.select(:cuisine).uniq
    @cuisines = []
    cuisines.each do |c|
      @cuisines << c.cuisine
    end

    @cuisines.sort!
    @message = Message.new
  end

  def show
    @booking = Booking.new
    @message = Message.new
    # check if current user has already registered for the event
    @booked_event = Booking.where(user_id: current_user, event_id: @event)
  end

  def new
    @event = Event.new
  end


  def create
    @event = Event.new(event_params)
    #@event = Event.find(params[:event_id])
    @event.user = current_user

    if @event.save!
      create_pictures
      p '##############################'
      p @event
      redirect_to myhostings_path, notice: "Event created successfully"
    else
      render :new
    end
  end


  def edit
  end

  def update
    if @event.update(event_params)
      redirect_to myhostings_path, notice: "Event updated successfully"
    else
      render :edit
    end
  end

  def destroy
    @event.destroy
    redirect_to myhostings_path, notice: "Event deleted successfully"
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:name, :event_date, :description, :cuisine, :price_per_guest, :max_guests, :address, :photo, :booked_guests)
  end

  def sort_by_date(events)
    events.sort_by { |event| event.event_date }
  end

  def create_pictures
    photos = params.dig(:event, :pictures) || []
    photos.each do |photo|
      @event.pictures.create(photo: photo)
    end
  end
end
