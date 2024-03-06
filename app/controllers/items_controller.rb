class ItemsController < ApplicationController
  before_action :set_item!, except: [:index]

  def index
    @items = Item.all
    @items = Item2.all
  end

  def show; end

  def edit; end

  def update
    if @item.update item_params
      redirect_to item_path(@item)
    else
      render :edit
    end
  rescue ActiveRecord::StaleObjectError
    redirect_to item_path(@item)
  end

  private

  def set_item!
    @item = Item.find params[:id]
  end

  def item_params
    params.require(:item).permit(:title, :lock_version)
  end
end
