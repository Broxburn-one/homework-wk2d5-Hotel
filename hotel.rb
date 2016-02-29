class Hotel
  attr_reader :rooms, :dates, :room_type, :checkin_date, :checkout_date

  def initialize(rooms)
    @rooms = rooms  # an array of rooms
  end

  def find_first_avail_room(dates)
    @room_type = dates[:room_type]
    @checkin_date = dates[:checkin_date]
    @checkout_date = dates[:checkout_date]

    @rooms.select! do |room| 
      if room.room_type == @room_type
        if (room.check_rooms_free({checkin_date: @checkin_date, checkout_date: @checkout_date })) == []
            return room 
        end
       # print "result: #{room.room_type}"   for debug
      end
    end
    return false
  end

  def get_total_revenue
    #  @room.get_tatal_days_booked_for_room * @room.room_rate
    total_revenue = 0
    @rooms.each do |room|
      total_revenue += (room.get_total_days_booked_for_room.to_i * room.rate.to_i)
    end
    return total_revenue
  end
    
  def num_booked_rooms(day)
    # this gets rooms booked on a partic day. Need then to search bookings for how many guests.
    rooms_booked = 0
    
    @rooms.each do |room|
      rooms_booked += 1 if room.dates_booked.include?(day)
    end
    return rooms_booked
  end

  def num_booked_guests_today(day, bookings)
    # loop thru bookings. For today's date sum nr guests and nr rooms booked
    tot_guests = 0
     bookings.each do |booking|
       # if booking.room_no.dates_booked.include?(day)
       if booking.get_booked_days.include?(day)
          tot_guests += booking.count_booked_in_guests
        end
     end
     return tot_guests
  end



end