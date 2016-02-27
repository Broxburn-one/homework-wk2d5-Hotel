class Room
  attr_reader :rate, :dates_booked, :room_type
  def initialize(room_type, room_rate=35, dates_booked)
    @room_type = 'single'
    @rate = room_rate
    @dates_booked = dates_booked
  end

  def check_room_rate
    return @rate
  end

  def room_free_on_dates(dates_to_check)
    #  test range of dates. Return date that is free.
    return dates_to_check - @dates_booked
  end

  def book_a_room(dates_to_book)
    if dates_to_book - @dates_booked == dates_to_book
      @dates_booked += dates_to_book
      return dates_to_book - @dates_booked
      #  which should be empty
    else
      #  indicates no booking because some rooms unavailable
      return dates_to_book
    end
  end
end