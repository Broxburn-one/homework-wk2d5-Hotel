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

  def get_guest_invoice
    # puts "result: #{DateTime.parse(@checkout_date).kind_of?(Date)}"  to test
    days_booked = DateTime.parse(@checkout_date) - DateTime.parse(@checkin_date)
    return @room_no.rate * days_booked
  end
 
  def count_booked_in_guests
    @guests.size
  end

end