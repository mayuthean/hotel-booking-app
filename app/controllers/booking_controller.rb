class BookingController < FrontEndApplicationController
  before_action :authenticate_user!

  def new
    @room_types = RoomType.all
    @room = Room.find(params[:room_id])
    @booking = @room.bookings.new
  end

  def create
    @room = Room.find(params[:room_id])
    @booking = @room.bookings.new(booking_params)

    if @booking.save
      @booking.update(user_id: current_user.id)
      redirect_to root_path
    else
      render :new
    end
  end

  def booking_params
    params.require(:booking).permit(:first_name,:last_name,:check_in,:check_out,:description, :user_id)
  end
end
