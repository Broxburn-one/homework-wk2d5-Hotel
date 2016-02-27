
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

