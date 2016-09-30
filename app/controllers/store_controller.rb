class StoreController < ApplicationController

  def index
    @categories = Category.all
    @items = Item.available_items
    if current_user
      @cart = current_user.current_cart
    else
      @cart = nil
    end
  end

end
