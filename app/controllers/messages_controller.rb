class MessagesController < ApplicationController
  
  def index
    @message = Message.new
    @name = params[:room][:name]
    @room = Room.find(params[:room_id])
    list = @room.list
    if ( list.name1 || list.name2 ) == @name
      render :index
    else
      redirect_to root_path
    end
  end
end
