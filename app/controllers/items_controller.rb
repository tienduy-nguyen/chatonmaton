class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  

  # GET /items
  def index
    @items = Item.all.order(updated_at: :desc)
  end

  # GET /items/1
  def show
    @item = Item.find(params[:id])
  end

  def edit
    
  end


  def update
    if current_user.is_admin 

      puts "----------------------------------"
      puts item_params

      if @item.update(item_params)
        flash[:success] = "Update an item"
        redirect_to items_path
      else
        render :edit
        flash[:error] = "An error has been occured"
      end

    else
      flash[:error] = "You do not have permission to take this action."
      redirect_back(fallback_location: items_path)
    end

  end


  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end
    def authorize_admin
      current_user.is_admin
    end

    # Only allow a list of trusted parameters through.
    def item_params
      params.require(:item).permit(:title, :description, :price, :image_url)
    end
end
