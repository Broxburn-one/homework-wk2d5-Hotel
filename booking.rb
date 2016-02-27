class Booking
  attr_reader :booking
  def initialize(booking)
    @booking = booking   # an array of guests
  end

  def get_booked_in_guests()
    #  pass in a booking and it returns the guests therein (single and double)
    guest_names = []
    @booking.each do |guest|
      guest_names << guest.get_guest_name
    end
    return guest_names
  end

end