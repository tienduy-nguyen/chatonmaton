class CartsController < ApplicationController
  before_action :authenticate_user!
  def index
    @carts = Cart.all
  end
  
  def show
    @cart
  end

  # GET cart/id
  def new 
    @cart = Cart.new
  end

  # POST
  def create
    @cart = Cart.find(params[:id])
    @item = Item.find(params[:item_id])
    puts "----------------------------"
    puts params
    puts @cart
    puts @item
    item_cart = ItemCart.new(cart: @cart, item: @item)
    if item_cart.save
      redirect_to items_path
      flash[:success] = "Update an item in cart sucessfully."
    else
      redirect_to items_path
      flash[:error] = "Some error has been occured."
    end
    
  end
  

  # DELETE 
  def destroy
    @event.destroy
    redirect_to root_path
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_card
    @card = Cart.find(params[:id])
  end

  
end
