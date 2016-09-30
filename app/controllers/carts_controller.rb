class CartsController < ApplicationController
  def show
    @cart = Cart.find(params[:id])
  end

  def checkout
    @cart = current_user.current_cart
    # binding.pry
    @cart.update_inventory
    @cart.status = "submitted"
    @cart.save
    current_user.current_cart_id = nil
    current_user.save
    # binding.pry
    redirect_to cart_path(@cart)
  end

end
