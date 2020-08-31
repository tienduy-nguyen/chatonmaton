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

  # POST carts
  def create
    @cart
  end

  # POST
  def update

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
