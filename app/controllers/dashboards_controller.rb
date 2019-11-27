require 'date'

class DashboardsController < ApplicationController

  def index
    bookings = Booking.where(user_id: current_user)
    #@user_event_bookings = Booking.own_event_bookings(current_user)
    upcoming_bookings = []
    past_events = []

    bookings.each do |booking|
      if booking.event.event_date < DateTime.now
        past_events << booking
      else
        upcoming_bookings << booking
      end
    end

    @upcoming_bookings = sort_by_date(upcoming_bookings)
    @past_events = sort_by_date(past_events).reverse_each
  end

  private

  def sort_by_date(bookings)
    r = bookings.sort_by { |b| b.event.event_date }
  end

  def list
    @events = Event.where(user_id: current_user)
  end

end
