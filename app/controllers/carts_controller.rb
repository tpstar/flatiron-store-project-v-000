class CartsController < ApplicationController
  def show
    @cart = Cart.find(params[:id])
    session[:checkout_button] = true if session[:checkout_button] == nil
  end

  def checkout
    @cart = Cart.find(params[:id])
    session[:checkout_button] = false
    @cart.update_inventory
    redirect_to cart_path(@cart)
  end

end
