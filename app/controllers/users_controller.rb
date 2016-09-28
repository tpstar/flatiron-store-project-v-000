class UsersController < ApplicationController



  def sign_out
    session.clear
    redirect_to store_path
  end

end
