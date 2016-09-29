class LineItemsController < ApplicationController
  def create
    current_user.current_cart = Cart.new
    current_user.current_cart.items << Item.find(params[:item_id])
    current_user.save
  end

end
