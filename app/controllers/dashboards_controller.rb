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

    @upcoming_bookings = sort_bookings_by_date(upcoming_bookings)
    @past_events = sort_bookings_by_date(past_events).reverse_each
  end

  def list
    events = Event.where(user_id: current_user)

    upcoming_hostings = []
    past_hostings = []

    events.each do |e|
      if e.event_date < DateTime.now
        past_hostings << e
      else
        upcoming_hostings << e
      end
    end

    @upcoming_hostings = sort_hostings_by_date(upcoming_hostings)
    @past_hostings = sort_hostings_by_date(past_hostings).reverse_each
  end

  private

  def sort_bookings_by_date(bookings)
    bookings.sort_by { |b| b.event.event_date }
  end

  def sort_hostings_by_date(hostings)
    hostings.sort_by { |e| e.event_date }
  end
end
