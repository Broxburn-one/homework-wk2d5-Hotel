class Guest
    attr_reader :guest_name, :guest_contact
  def initialize(params)
    @guest_name = params[:name]
    @guest_contact = params[:contact]
  end


end