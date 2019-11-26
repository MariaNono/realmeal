require 'date'

class DashoboardsController < ApplicationController
  def index
    bookings = Booking.where(user_id: current_user)
    @upcoming = []
    @past = []
    bookings.each do |booking|
      if booking.event.event_date < DateTime.now
        @past << booking
      else
        @upcoming << booking
      end
    end
  end
end
