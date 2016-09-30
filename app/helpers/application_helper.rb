module ApplicationHelper
  def current_cart
    current_user.current_cart ||= Cart.create
  end

  def number_to_currency(price)
    price.to_f/100
  end
end
