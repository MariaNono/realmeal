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
    @booking.state = "pending"
    @booking.user = current_user
    @booking.event = @event

    #already create a payment session when booking is created
    if @booking.save
      item = {
        name: @event.description,
        images: [@event.photo],
        amount: @event.price_per_guest_cents,
        currency: 'eur',
        quantity: 1
      }
      session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'],
        success_url: event_booking_url(@event, @booking),
        cancel_url: event_booking_url(@event, @booking),
        line_items: [item]
      )
      @booking.update!(checkout_session_id: session.id)
      # updates booked_guests when booking is created to block seats
      @event.booked_guests = params[:booking][:number_of_guests].to_i
      @event.save
      # shows a popuup message on the same page if booking.save is successful
    else
      render :new
    end
  end

  def update
    @event = Event.find(params[:event_id])
    @booking = Booking.find(params[:id])
    # find event to update booked_guests if host declines the booking
    @event = Event.find(params[:event_id])
    if @booking.update(booking_params)
      if params[:booking][:declined] == "true"
        # updates booked_guests when booking is declined by host
        @event.booked_guests -= @booking.number_of_guests
        @event.save
      end
      redirect_to request.referrer
    end
  end

  def destroy
    # finds event when booking is cancelled by the user to update booked_guests
    @event = Event.find_by(id: @booking.event)
    @event.booked_guests -= @booking.number_of_guests
    if @booking.destroy
      # updates booked_guests
      @event.save
    end
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

