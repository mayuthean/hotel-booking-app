class Admin::RoomsController < ApplicationController
  before_action :set_room, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!
  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
     if @room.save
       redirect_to admin_room_path(@room)
     else render :new
    end
  end

  def show

  end

  def edit

  end

  def update
    if @room.update(room_params)
      redirect_to admin_room_path
    else render :new
    end
  end

  def destroy
    @room.destroy
    redirect_to admin_rooms_path
  end

  private
    def set_room
      @room = Room.find(params[:id])
    end

    def room_params
      params.require(:room).permit(:room_no, :price, :description, :room_type_id, :image)
    end

end
