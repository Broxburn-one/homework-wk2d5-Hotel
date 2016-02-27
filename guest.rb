class Guest
  attr_accessor :room_type
  def initialize(params)
    @room_type = params[:room_type]
  end

  def get_room_type
    @room_type
  end
end