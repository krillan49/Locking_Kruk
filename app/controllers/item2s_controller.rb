class Item2sController < ApplicationController
  before_action :set_item!, except: [:index]

  def show; end

  def edit; end

  def update
    if @item.update item_params
      redirect_to item_path(@item)
    else
      render :edit
    end
  end

  private

  def set_item!
    @item = Item2.find params[:id]
  end

  def item_params
    params.require(:item).permit(:title)
  end
end
