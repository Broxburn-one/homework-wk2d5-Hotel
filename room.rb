class Room
  attr_reader :rate, :dates_booked, :room_type
  # def initialize(room_type, room_rate=35, dates_booked)
  def initialize(params)
    @room_type = params[:room_type]
    @rate = params[:rate]
    @dates_booked = params[:dates_booked]
  end


  def check_rooms_free(date_range)
    check_in = date_range[:checkin_date]
    check_out = date_range[:checkout_date]
    # booking_range = [check_in...check_out]
    booking_range=*(check_in...check_out)
    return @dates_booked & booking_range
  end

  def get_total_days_booked_for_room
    @dates_booked.size
  end

end