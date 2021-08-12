class MessagesController < ApplicationController
  
  def index
    @room = Room.find(params[:room_id])
    @users = @room.users
    @message = Message.new
    @messages = @room.messages.includes(:user)
  end

  def create
    @room = Room.find(params[:room_id])
    @message = @room.messages.new(message_params)
    if @message.save
      ActionCable.server.broadcast 'message_channel', message: @message
    end
  end

  private
  
  def message_params
    params.require(:message).permit(:content, :image).merge(user_id: current_user.id)
  end
end
