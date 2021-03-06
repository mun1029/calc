class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def following
    @user  = User.find(params[:id])
    @users = @user.followings
    render 'show_follow'
  end

  def followers
    @user  = User.find(params[:id])
    @users = @user.followers
    render 'show_follower'
  end
end
