class ImagesController < ApplicationController

  def create
    @item = Item.find(params[:id])
    @item.image_url.attach(params[:image_url])
    redirect_to item_path(@item)

  end
end
