require('minitest/autorun')
require('date')
require_relative('../hotel')
require_relative('../room')
require_relative('../guest')
require_relative('../booking')


class HotelTest < MiniTest::Test

  def setup  
    #  dates are bookings
    @room_1 = Room.new({room_type: 'single', rate: 35, dates_booked: ['2016-02-26', '2016-02-27', '2016-02-28']})
    @room_2 = Room.new({room_type: 'single', rate: 35, dates_booked: []})
    @room_3 = Room.new({room_type: 'single',  rate: 35, dates_booked: ['2016-02-29', '2016-03-01', '2016-03-03']})
    @room_4 = Room.new({room_type: 'double',  rate: 70, dates_booked: ['2016-02-26', '2016-02-27', '2016-02-28']})
    @room_5 = Room.new({room_type: 'double',  rate: 70, dates_booked: ['2016-02-26', '2016-02-27', '2016-02-28', '2016-03-02', '2016-03-04']})
    @room_6 = Room.new({room_type: 'double',  rate: 70, dates_booked: []})

    @rooms = [@room_1, @room_2, @room_3, @room_4, @room_5, @room_6]
    @hotel = Hotel.new(@rooms)
  end

  def test_list_of_rooms
    assert_equal([@room_1, @room_2, @room_3, @room_4, @room_5, @room_6], @hotel.rooms)
  end
  

end