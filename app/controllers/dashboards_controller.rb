require 'date'

class DashoboardsController < ApplicationController
  def index
    bookings = Booking.where(user_id: current_user)
    @upcoming = []
    @past = []
    bookings.each do |booking|
      if booking.event.event_date < DateTime.now
        @past_events << booking.event
      else
        @upcoming_bookings << booking
      end
    end
  end
end
