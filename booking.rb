class Booking
  attr_reader  :room_no, :checkin_date, :checkout_date
  def initialize(params)
    @guests = params[:guests]   # an array of guests
    @room_no = params[:room_no]
    @checkin_date = params[:checkin_date]
    @checkout_date = params[:checkout_date]
  end

  def get_booked_in_guests()
    #  pass in a booking and it returns the guests therein (single and double)
    guest_names = []
    @guests.each do |guest|
      guest_names << guest.guest_name
    end
    return guest_names
  end

 

end