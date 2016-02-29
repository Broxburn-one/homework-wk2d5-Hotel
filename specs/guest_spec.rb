require('minitest/autorun')
require('date')
require_relative('../guest')

class GuestTest < MiniTest::Test
  def setup  
    # @guest_1 = Guest.new({room_type: 'single', has_guest: false})
    # @guest_2 = Guest.new({room_type: 'double', has_guest: true})
    @guest_1 = Guest.new({name: 'Fred Mertz', contact: '0141-222-2332'})
    @guest_2 = Guest.new({name: 'Ethel Mertz', contact: '0141-222-2332'})
    @guest_3 = Guest.new({name: 'Curly', contact: '0121-222-2332'})
    @guest_4 = Guest.new({name: 'Moe', contact: '01223-222-2332'})
    @guest_5 = Guest.new({name: 'Larry', contact: '01223-222-2332'})
    @guest_6 = Guest.new({name: 'Jerrt', contact: '01223-222-2332'})
  end

    def test_guest_has_name
      assert_equal('Fred Mertz', @guest_1.guest_name())
    end

    def test_guest_has_contact
      assert_equal("0141-222-2332", @guest_2.guest_contact)
    end






#   def test_get_guest_room_type
# #  single or double - either requirement or by allocation
#     assert_equal('single', @guest_1.get_room_type())
#     assert_equal('double', @guest_2.get_room_type())
#   end

#   def test_guest_has_partner?
# #   see if cust's double room has 2 occupants: my def is guest = stays in same room; default = false
#     assert_equal(false, )
#   end
end