class RoomsController < FrontEndApplicationController

  def index
    @rt = RoomType.find(params[:room_type_id])
    @rooms = @rt.rooms
    @room_types = RoomType.all
  end

end
