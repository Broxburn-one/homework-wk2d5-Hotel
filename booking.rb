class Booking
  attr_reader :booking
  def initialize(params)
    @guests = params[:guests]   # an array of guests
    @room_no = params[:room_no]
  end

  def get_booked_in_guests()
    #  pass in a booking and it returns the guests therein (single and double)
    guest_names = []
    @guests.each do |guest|
      guest_names << guest.get_guest_name
    end
    return guest_names
  end

  def get_booked_room_no
    return @room_no
  end

end