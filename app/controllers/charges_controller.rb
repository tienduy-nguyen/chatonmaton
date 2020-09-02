class ChargesController < ApplicationController
  def new
    @cart = current_user.cart
    @item_carts = ItemCart.where(cart: @cart)
    @amount = @item_carts.reduce(0){|sum, ic| sum + ic.item.price}.round(2)*100
  end

  def create
    @cart = current_user.cart
    @item_carts = ItemCart.where(cart: @cart)
    @amount = @item_carts.reduce(0){|sum, ic| sum + ic.item.price}.round(2)*100

    customer = Stripe::Customer.create({
      email: params[:stripeEmail],
      source: params[:stripeToken],
    })

    charge = Stripe::Charge.create({
      customer: current_user.id,
      amount: @amount.to_i,
      description: 'Rails Stripe customer',
      currency: 'usd',
    })

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
