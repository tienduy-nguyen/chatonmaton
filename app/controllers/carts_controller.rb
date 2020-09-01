class CartsController < ApplicationController
  before_action :authenticate_user!
  def index
    @cart = current_user.cart
    
    @items = []
    @total = 0
    @item_carts = ItemCart.where(cart: @cart)
    @item_carts.each do |item_cart|
      @total = @total + item_cart.item.price
    end

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
    puts "------------------"
    puts params
    @item_cart = ItemCart.find(params[:item_cart_id])
    if @item_cart.destroy
      flash[:success] = "Remove successfully an item"
    else
      flash[:error] = "An error has been occured!"
    end
    redirect_to carts_path

  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_card
    @card = Cart.find(params[:id])
  end

  
end
