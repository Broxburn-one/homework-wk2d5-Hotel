require('minitest/autorun')
require('date')
require_relative('../customer')

class CustomerTest < MiniTest::Test
  def setup  
    @customer_1 = Customer.new({room_type: 'single'})

  end

  def test_get_customer_room_type
#  single or double - either requirement or by allocation
    assert_equal('single', @customer_1.get_room_type())
  end
end