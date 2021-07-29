class ListsController < ApplicationController

  def index
    @lists = current_user.lists
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to lists_path
    else
      render :new
    end
  end

  def destroy
    list = List.find(params[:id])
    list.destroy
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    list = List.find(params[:id])
    list.update(list_params)
  end


  private

  def list_params
    params.require(:list).permit(:list_name, :name1, :name2, :name3, :name4, :name5, :name6, 
    :name7, :name8, :name9, :name10, :name11, :name12, :name13, :name14, :name15).merge(user_id: current_user.id)
  end
end
