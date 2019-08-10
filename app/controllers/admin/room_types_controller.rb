class Admin::RoomTypesController < ApplicationController
  before_action :set_room_type, only: [:show, :update, :edit, :destroy]
  def index
    @room_types = RoomType.all
  end

  def new
    @room_type = RoomType.new
  end

  def create
    @room_type = RoomType.new(room_type_params)
     if @room_type.save
       redirect_to admin_room_types_path
     else render :new
     end
  end

  def show

  end
  def destroy
    @room_type.destroy
    redirect_to admin_room_types_path
  end

  def edit

  end
  def update
    if @room_type.update(room_type_params)
      redirect_to admin_room_type_path(@room_type)
    else render :new
    end
  end
  private
    def set_room_type
      @room_type = RoomType.find(params[:id])
    end
    def room_type_params
      params.require(:room_type).permit(:title)
    end
end
