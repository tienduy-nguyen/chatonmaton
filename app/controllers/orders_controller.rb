class OrdersController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @orders = Order.all
  end
  
  def create
  end

  def destroy
  end

  def update
  end

  def show
  end

end
