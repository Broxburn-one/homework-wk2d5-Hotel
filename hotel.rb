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
       # print "result: #{room.room_type}"
      end
    end

    return false
   
  end
    

end