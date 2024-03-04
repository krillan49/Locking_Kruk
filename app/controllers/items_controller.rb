class ItemsController < ApplicationController
  before_action :set_item!

  def index
    @items = Item.all
  end

  def show; end

  def edit; end

  def update
    if @item.upate item_params
      redirect_to item_path(@item)
    else
      render :edit
    end
  end

  private

  def set_item!
    @item = Item.find params[:id]
  end

  def item_params
    params.require(:item).permit(:title, :lock_version)
  end
end
