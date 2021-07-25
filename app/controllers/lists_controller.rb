class ListsController < ApplicationController

  def index
    @lists = List.where(user_id: current_user.id)
  end

  def new
    @list = List.new
  end

  def create
    @list = List.create(list_params)

  end

  private

  def list_params
    params.require(:list).permit(:list_name, :name1, :name2, :name3, :name4, :name5, :name6, 
    :name7, :name8, :name9, :name10, :name11, :name12, :name13, :name14, :name15).merge(user_id: current_user.id)
  end
end
