class MessagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_room
  before_action :move_to_index

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

  def set_room
    @room = Room.find(params[:room_id])
  end

  def move_to_index
    unless @room.users.ids.include?(current_user.id)
      redirect_to root_path
    end
  end
end
