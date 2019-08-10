class BookingController < FrontEndApplicationController
  def new
    @room_types = RoomType.all
    @room = Room.find(params[:room_id])
    @booking = @room.bookings.new
  end
end
