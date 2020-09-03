class ChargesController < ApplicationController
  def new
    @cart = current_user.cart
    @item_carts = ItemCart.where(cart: @cart)
    @amount = @item_carts.reduce(0){|sum, ic| sum + ic.item.price}.round(2)
  end

  def create
    @cart = current_user.cart
    # @item_carts = ItemCart.where(cart: @cart)

    @item_carts = ItemCart.where(cart_id: @cart.id)
    @amount = @item_carts.reduce(0){|sum, ic| sum + ic.item.price}.round(2)*100

    customer = Stripe::Customer.create({
      email: params[:stripeEmail],
      source: params[:stripeToken],
    })

    charge = Stripe::Charge.create({
      customer: customer.id,
      amount: @amount.to_i,
      description: 'Rails Stripe customer',
      currency: 'usd',
    })

    cart_empty

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

  private
  def cart_empty
    @order = Order.create(user: current_user)
    @cart = current_user.cart
    item_carts = ItemCart.where(cart: @cart)
    item_carts.each do |item_cart|
      ItemOrder.create(item: item_cart.item, order: @order)
      item_cart.destroy
    end
    redirect_to order_path(@order)
  end

 
end
