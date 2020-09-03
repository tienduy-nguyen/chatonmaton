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

  def new
    @item = Item.new

  end

  def create
    @item = Item.new(item_params)

    if @item.save
      flash[:success] = "Create item successfully!"
     redirect_back(fallback_location: items_path)
    else
      @item.errors.full_messages.each do |message|
        flash[:error] = message
      end
      render :new
    end
  end

  # GET /items/:id/edit
  def edit
    if !current_user.is_admin
      flash[:error] = "Permission denied!"
      redirect_back(fallback_location: items_path)
    end
  end


  # PUT /items/:id
  def update
    if current_user.is_admin 

      puts "----------------------------------"
      puts item_params

      if @item.update(item_params)
        flash[:success] = "Update an item"
        redirect_to items_path
      else
        @item.errors.full_messages.each do |message|
          flash[:error] = message
        end
        render :edit
      end

    else
      flash[:error] = "Permission denied!"
      redirect_back(fallback_location: items_path)
    end

  end

  def destroy
    if !current_user.is_admin
      flash[:error] = "Permission denied!"
      return redirect_back(fallback_location: root_path)
    end
    @item.destroy
    redirect_to items_path
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
