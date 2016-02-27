require('minitest/autorun')
require('date')
require_relative('../booking')
require_relative('../customer')
require_relative('../room')

class BookingTest < MiniTest::Test
  def setup 
    @booking_1 = Booking.new()
  end


end 