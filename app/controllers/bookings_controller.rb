require "stripe"

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
    @event = Event.find(params[:event_id])
    item = {
          name: @event.description,
          images: [@event.photo],
          amount: @event.price_per_guest_cents,
          currency: 'eur',
          quantity: 1
        }
    if params[:booking][:payment] == "true"
      session = Stripe::Checkout::Session.create({
        payment_method_types: ['card'],
        success_url: event_booking_url(@event, @booking),
        cancel_url: event_booking_url(@event, @booking),
        line_items: [item]
      })
      @booking.update(checkout_session_id: session.id)
      redirect_to payment_path(@booking)
    else
      @booking = Booking.find(params[:id])
      @booking.update(booking_params)
      redirect_to request.referrer
    end
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

