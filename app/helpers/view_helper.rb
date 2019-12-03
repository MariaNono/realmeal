module ViewHelper
  def seats_left(event)
    event.max_guests - event.booked_guests
  end
end
