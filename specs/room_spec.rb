require('minitest/autorun')
require('date')
require_relative('../room')
require_relative('../hotel')


class RoomTest < MiniTest::Test
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

    def test_check_room_rate
      assert_equal(35, @room_1.rate)
    end

    def test_room_free_on_dates
      date_range = {checkin_date: '2016-02-28', checkout_date: '2016-02-29'}
      assert_equal([], @hotel.check_rooms_free(date_range))
    end




    # def test_room_free_on_dates
    #   # today = DateTime.now.to_date
    #   dates_to_check = ['2016-02-28', '2016-02-29']
    #   assert_equal(['2016-02-29'], @room_1.room_free_on_dates(dates_to_check))
    # end



    # def test_book_a_free_room
    #   dates_to_book = ['2016-03-01', '2016-03-02', '2016-03-03']
    #   assert_equal([], @room_1.book_a_room(dates_to_book))
    # end

  

end