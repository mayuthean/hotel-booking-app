class StaticPagesController < FrontEndApplicationController

  def home
    @room_types= RoomType.all
  end
  

end
