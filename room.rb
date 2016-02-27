class Room
  attr_reader :rate, :dates_booked, :room_type
  # def initialize(room_type, room_rate=35, dates_booked)
  def initialize(params)
    @room_type = params[:single]
    @rate = params[:rate]
    @dates_booked = params[:dates_booked]
  end

  # def check_room_rate
  #   return @rate
  # end

  def check_rooms_free(date_range)
    check_in = date_range[:checkin_date]
    check_out = date_range[:checkout_date]
    # booking_range = [check_in...check_out]
    booking_range=*(check_in...check_out)
    return @dates_booked & booking_range
  end


  # def room_free_on_dates(dates_to_check)
  #   #  test range of dates. Return date that is free.
  #   return dates_to_check - @dates_booked
  # end

  # def book_a_room(dates_to_book)
  #   if dates_to_book - @dates_booked == dates_to_book
  #     @dates_booked += dates_to_book
  #     return dates_to_book - @dates_booked
  #     #  which should be empty
  #   else
  #     #  indicates no booking because some rooms unavailable
  #     return dates_to_book
  #   end
  # end
end