
Rooms

- can check room rate
- can check if room free on dates specified
- can book a room on range of dates (prevents double-booking)


todo

- create hotel class containing array collection of our rooms
    - hotel does bookings and is in central command
    - hotel can tell us its capacity and nr of guests and free rooms
    - 

- create customer : 
    NB 1 customer per room. If he has a guest then that guest is not counted as customer for booking purposes but partner is linked to him/her.
    - has name, contact details (ie address/phone etc.)
    - has room type
    - has booked days
    - is with guest?  ie double room with 2 occupants

    - is currently booked in
      - has room number?


tests:

booking on dates where no rooms free part of the time

cancellations
accumulation of fees for bookings
-------

version 2

hotel, bookings, rooms, customers

checkin and checkout dates are a hash

=====

MAKE BOOKING

test 1  find first room with dates available on requested booking date
  --> loop through the rooms; return free room nr

test 2: make booking on above free room
  parameter requires u to enter room nr
  --> update the room matrix
  
  






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

