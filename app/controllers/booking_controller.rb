class BookingController < FrontEndApplicationController
  def new
    @room_types = RoomType.all
    @room = Room.find(params[:room_id])
    @booking = @room.bookings.new
  end

  def create
    @room = Room.find(params[:room_id])
    @booking = @room.bookings.new(booking_params)
    @booking.save
  end

  def booking_params
    params.require(:booking).permit(:first_name,:last_name,:check_in,:check_out,:description)
  end
end
