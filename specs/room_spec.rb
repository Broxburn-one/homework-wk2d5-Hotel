require('minitest/autorun')
require('date')
require_relative('../room')


class RoomTest < MiniTest::Test
  def setup  
    #  dates are bookings
    @room_1 = Room.new('single', 35, ['2016-02-26', '2016-02-27', '2016-02-28'])
    @room_2 = Room.new('single', 35, [])
    @room_3 = Room.new('single', 35, ['2016-02-29', '2016-03-01', '2016-03-03'])
    @room_4 = Room.new('double', 70, ['2016-02-26', '2016-02-27', '2016-02-28'])
    @room_5 = Room.new('double', 70, ['2016-02-26', '2016-02-27', '2016-02-28', '2016-03-02', '2016-03-04'])
    @room_6 = Room.new('double', 70, [])
  end

    def test_check_room_rate
      assert_equal(35, @room_1.check_room_rate())
    end

    def test_room_free_on_dates
      # today = DateTime.now.to_date
      dates_to_check = ['2016-02-28', '2016-02-29']
      assert_equal(['2016-02-29'], @room_1.room_free_on_dates(dates_to_check))
    end

    def test_book_a_free_room
      dates_to_book = ['2016-03-01', '2016-03-02', '2016-03-03']
      assert_equal([], @room_1.book_a_room(dates_to_book))
    end

  

end