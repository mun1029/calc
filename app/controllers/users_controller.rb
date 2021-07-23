class UsersController < ApplicationController

  def index
  end

  def show
    @nickname = current_user.nickname
  end
end
