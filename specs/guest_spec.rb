require('minitest/autorun')
require('date')
require_relative('../guest')

class GuestTest < MiniTest::Test
  def setup  
    @guest_1 = Guest.new({room_type: 'single', has_guest: false})
    @guest_2 = Guest.new({room_type: 'double', has_guest: true})

  end

  def test_get_guest_room_type
#  single or double - either requirement or by allocation
    assert_equal('single', @guest_1.get_room_type())
    assert_equal('double', @guest_2.get_room_type())
  end

#   def test_guest_has_partner?
# #   see if cust's double room has 2 occupants: my def is guest = stays in same room; default = false
#     assert_equal(false, )
#   end
end