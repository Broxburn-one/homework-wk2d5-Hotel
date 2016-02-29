require('minitest/autorun')
require('date')
require_relative('../booking')
require_relative('../guest')
require_relative('../room')
require_relative('../hotel')

class BookingTest < MiniTest::Test

  def setup 
    #  dates are bookings
    @room_1 = Room.new({room_type: 'single', rate: 35, dates_booked: ['2016-02-26', '2016-02-27', '2016-02-28']})
    @room_2 = Room.new({room_type: 'single', rate: 35, dates_booked: []})
    @room_3 = Room.new({room_type: 'single',  rate: 35, dates_booked: ['2016-02-29', '2016-03-01', '2016-03-03']})
    @room_4 = Room.new({room_type: 'double',  rate: 70, dates_booked: ['2016-02-26', '2016-02-27', '2016-02-28']})
    @room_5 = Room.new({room_type: 'double',  rate: 70, dates_booked: ['2016-02-26', '2016-02-27', '2016-02-28', '2016-03-02', '2016-03-04']})
    @room_6 = Room.new({room_type: 'double',  rate: 70, dates_booked: []})

    #  guests
    @guest_1 = Guest.new({name: 'Fred Mertz', contact: '0141-222-2332'})
    @guest_2 = Guest.new({name: 'Ethel Mertz', contact: '0141-222-2332'})
    @guest_3 = Guest.new({name: 'Curly', contact: '0121-222-2332'})
    @guest_4 = Guest.new({name: 'Moe', contact: '01223-222-2332'})
    @guest_5 = Guest.new({name: 'Larry', contact: '01223-222-2332'})
    @guest_6 = Guest.new({name: 'Jerrt', contact: '01223-222-2332'})


    @booking_1 = Booking.new({guests: [@guest_1, @guest_2], room_no: @room_6, checkin_date: '2016-03-03', checkout_date: '2016-03-05'})

    @rooms = [@room_1, @room_2, @room_3, @room_4, @room_5, @room_6]

    @hotel = Hotel.new(@rooms)



  end

  def test_booked_in_guests
    assert_equal(['Fred Mertz', 'Ethel Mertz'], @booking_1.get_booked_in_guests)
  end

  def test_count_booked_in_guests
    assert_equal(2, @booking_1.count_booked_in_guests)
  end

  def test_booked_room_no
    assert_equal(@room_6, @booking_1.room_no)
  end

  def test_get_checkin_date
    assert_equal('2016-03-03', @booking_1.checkin_date)
  end

  def test_get_checkout_date
    assert_equal('2016-03-05', @booking_1.checkout_date)
  end

  def test_get_guest_invoice
    assert_equal(140, @booking_1.get_guest_invoice)
  end

end 