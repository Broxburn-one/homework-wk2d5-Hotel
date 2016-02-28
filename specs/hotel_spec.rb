require('minitest/autorun')
require('date')
require_relative('../hotel')
require_relative('../room')
require_relative('../guest')
require_relative('../booking')


class HotelTest < MiniTest::Test

  def setup  
   #  dates are bookings
    @room_1 = Room.new({rate: 35, dates_booked: ['2016-02-26', '2016-02-27', '2016-02-28'], room_type: 'single'})
    @room_2 = Room.new({rate: 35, dates_booked: ['2016-02-26'], room_type: 'single'})
    @room_3 = Room.new({rate: 35, dates_booked: ['2016-02-29', '2016-03-01', '2016-03-03'], room_type: 'single'})
    @room_4 = Room.new({rate: 70, dates_booked: ['2016-02-26', '2016-02-27', '2016-02-28'], room_type: 'double'})
    @room_5 = Room.new({rate: 70, dates_booked: ['2016-02-26', '2016-02-27', '2016-02-28', '2016-03-02', '2016-03-04'], room_type: 'double'})
    @room_6 = Room.new({rate: 70, dates_booked: ['2016-02-26'], room_type: 'double'})

    @rooms = [@room_1, @room_2, @room_3, @room_4, @room_5, @room_6]
    @hotel = Hotel.new(@rooms)
  end

  def test_list_of_rooms
    assert_equal([@room_1, @room_2, @room_3, @room_4, @room_5, @room_6], @hotel.rooms)
  end
  
   def test_find_first_available_room
      desired_dates = { room_type: 'single', checkin_date: '2016-02-28', checkout_date: '2016-02-29'}
      desired_dates1 = { room_type: 'double', checkin_date: '2016-02-28', checkout_date: '2016-02-29'}
  
      assert_equal(@room_2, @hotel.find_first_avail_room(desired_dates))
      assert_equal(@room_6, @hotel.find_first_avail_room(desired_dates1))
    end

    def test_find_first_available_room_fail
      desired_dates = { room_type: 'double', checkin_date: '2016-02-26', checkout_date: '2016-02-27'}
      assert_equal(false, @hotel.find_first_avail_room(desired_dates))
    end

    def test_get_total_revenue
      # can do 2 ways: i. all rooms booked * cost of each room; or rooms booked up to today's date then total
      #  spec says not to bother about date so just get total days booked in each room mult by rate.
      #  room_1: 3 * 35; room_2: 1 * 35; room_3: 3 * 35; room_4: 3 * 70; room_5: 5 * 70;  room_6: 1 * 70 => 875 
        assert_equal(875, @hotel.get_total_revenue)
    end







end