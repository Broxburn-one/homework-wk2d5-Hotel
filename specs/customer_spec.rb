require('minitest/autorun')
require('date')
require_relative('../customer')

class CustomerTest < MiniTest::Test
  def setup  
    @customer_1 = Customer.new({room_type: 'single', has_guest: false})
    @customer_2 = Customer.new({room_type: 'double', has_guest: true})

  end

  def test_get_customer_room_type
#  single or double - either requirement or by allocation
    assert_equal('single', @customer_1.get_room_type())
    assert_equal('double', @customer_2.get_room_type())
  end

#   def test_customer_has_guest?
# #   see if cust's double room has 2 occupants: my def is guest = stays in same room; default = false
#     assert_equal(false, )
#   end
end