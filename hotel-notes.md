

MAKE BOOKING

test 1  find first room with dates available on requested booking date
  --> loop through the rooms; return free room nr

test 2: make booking on above free room
  parameter requires u to enter room nr
  --> update the room matrix
  
  +++++++++++++++

check common values in 2 arrays:

x = [1, 2, 4]
y = [5, 2, 4]
x & y # => [2, 4]


+++++++

You can create an array with a range using splat,

>> a=*(1..10)
=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]


need to subtract a day as checkout date -> guest not staying

++++++++++++

hotel.rb:

  # @room is an object.
      # loop through each object where :room_type is @room_type (in our case)
      # then call the  room.check_rooms_free , which takes a date range, 
      #  so pass it @range = {checkin_date: @checkin_date, checkout_date: @checkout_date }
      #  if it returns an empty array, that's the one you want: exit and return
      #  else false: no available rooms
      #   .nil?










1. check dates free  -> fail
2. check dates free  -> pass
3. make booking
4. count days booked
5. output cost of stay




Kitty:

1. loop through each booking up to today's date, 
    list nr days booked and calculate the total for that booking.
2. do grand sum to date.
    
































VVVVVV
old way

lass Guest
  attr_accessor :room_type
  def initialize(params)
    @room_type = params[:room_type]
  end

  def get_room_type
    @room_type
  end
end

