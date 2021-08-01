class ListsController < ApplicationController

  def show
    @list = List.find(params[:id])
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
    if list.destroy
      redirect_to list_path
      flash[:destroy] = "削除が完了しました"
    else
      redirect_to list_path
      flash[:notDestroy] = "選択されたリストは使用されています"
    end
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    list = List.find(params[:id])
    if list.update(list_params)
      redirect_to lists_path
      flash[:update] = "編集が完了しました"
    else
      render :edit
    end
  end


  private

  def list_params
    params.require(:list).permit(:list_name, :name1, :name2, :name3, :name4, :name5, :name6, 
    :name7, :name8, :name9, :name10, :name11, :name12, :name13, :name14, :name15).merge(user_id: current_user.id, name1: current_user.nickname)
  end
end
