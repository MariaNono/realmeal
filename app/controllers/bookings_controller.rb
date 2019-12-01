class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index
    @event = Event.find(params[:event_id])
    @bookings = Booking.where(event_id: params[:event_id])
    @pending = @bookings.select { |b| b.status == 'pending' }
    @accepted = @bookings.select { |b| b.status == 'accepted' }
    @declined = @bookings.select { |b| b.status == 'declined' }
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @event = Event.find(params[:event_id])
    @booking.user = current_user
    @booking.event = @event
    unless @booking.save
      # redirect_to mybookings_path
      # shows a popuup message on the same page if booking.save is successful
      render :new
    end
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to request.referrer, notice: "Your booking is updated"
  end

  def destroy
    @booking.destroy
    redirect_to mybookings_path, notice: "Your booking is cancelled"
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:number_of_guests, :status)
  end
end
