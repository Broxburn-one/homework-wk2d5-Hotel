class Guest
    
  def initialize(params)
    @guest_name = params[:name]
    @guest_contact = params[:contact]
  end

  def get_guest_name
    @guest_name
  end

  def get_contact
    @guest_contact
  end
end