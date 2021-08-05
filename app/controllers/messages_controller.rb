class MessagesController < ApplicationController
  
  def index
    @room = Room.find(params[:room_id])
    @users = @room.users
    @message = Message.new
    
  end
end
