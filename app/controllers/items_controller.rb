class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]


  # GET /items
  def index
    @items = Item.all
  end

  # GET /items/1
  def show
    @item = Item.find(params[:id])
  end

  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def item_params
      params.require(:item).permit(:title, :description, :price, :image_url)
    end
end
