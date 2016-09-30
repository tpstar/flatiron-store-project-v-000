class UsersController < ApplicationController

  def sign_out
    current_user.current_cart_id = nil
    current_user.save
    session.clear
    redirect_to store_path
  end

end
