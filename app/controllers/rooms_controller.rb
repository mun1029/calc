class RoomsController < ApplicationController
  def new
    @lists = current_user.lists
    @room = Room.new
  end
end
