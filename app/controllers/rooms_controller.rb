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

  private

  def room_params
    params.require(:room).permit(:name, :list_id, user_ids: [])
  end
end
