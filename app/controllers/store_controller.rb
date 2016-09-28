class StoreController < ApplicationController
  def index
    @categories = Category.all
    @items = Item.available_items
  end


  # def destroy
  #   session.clear
  #   redirect_to root_path
  # end

end
