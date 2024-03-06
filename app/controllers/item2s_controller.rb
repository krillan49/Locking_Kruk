class Item2sController < ApplicationController
  before_action :set_item!

  def show; end

  def edit; end

  def update
    result = nil

    @item.with_lock do
      @item.title = params[:item2][:title]
      result = @item.save
      sleep 10
    end

    if result
      redirect_to item2_path(@item)
    else
      render :edit
    end
  end

  private

  def set_item!
    @item = Item2.find params[:id]
  end

  def item_params
    params.require(:item2).permit(:title)
  end
end
