require('minitest/autorun')
require('date')
require_relative('../booking')
require_relative('../guest')
require_relative('../room')

class BookingTest < MiniTest::Test

  def setup 
    # @guest_1 = Guest.new({room_type: 'single', has_guest: false})
    # @guest_2 = Guest.new({room_type: 'double', has_guest: true})
    @guest_1 = Guest.new({name: 'Fred Mertz', contact: '0141-222-2332'})
    @guest_2 = Guest.new({name: 'Ethel Mertz', contact: '0141-222-2332'})
    @guest_3 = Guest.new({name: 'Curly', contact: '0121-222-2332'})
    @guest_4 = Guest.new({name: 'Moe', contact: '01223-222-2332'})

    @booking_1 = Booking.new({guests: [@guest_1, @guest_2], room_no: 6})
  end

  def test_booked_in_guests
    assert_equal(['Fred Mertz', 'Ethel Mertz'], @booking_1.get_booked_in_guests)
  end

  def test_booked_room_no
    assert_equal(6, @booking_1.get_booked_room_no)
  end

  def test_get_checkin_date

  end

  def test_get_checkout_date

  end

end 