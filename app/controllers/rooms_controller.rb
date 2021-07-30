class RoomsController < ApplicationController

  def show
    @room = Room.find(params[:id])
  end

  def new
    @lists = current_user.lists
    @room = Room.new
  end
  
  def create
    Room.create(room_params)
  end

  def destroy
    room = Room.find(params[:id])
    room.destroy
    redirect_to root_path
  end

  private

  def room_params
    params.require(:room).permit(:name, :list_id, user_ids: [])
  end
end
