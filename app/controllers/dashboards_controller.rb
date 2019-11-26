require 'date'

class DashboardsController < ApplicationController

  def index
    bookings = Booking.where(user_id: current_user)
    @upcoming_bookings = []
    @past_events = []

    bookings.each do |booking|
      if booking.event.event_date < DateTime.now
        @past_events << booking.event
      else
        @upcoming_bookings << booking
      end
    end

  end

end
