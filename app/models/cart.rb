class Cart < ActiveRecord::Base
  has_many :orders
  has_many :users, :through => :orders

  has_many :line_items
  has_many :items, :through => :line_items

  belongs_to :category

  def total
    total = 0
    self.line_items.each do |line_item|
      total += (line_item.item.price * line_item.quantity)
    end
    total
  end

  def add_item(item_id)
    LineItem.find_or_initialize_by(cart_id: self.id, item_id: item_id)
  end

  def update_inventory
    self.items.each do |item|
      # binding.pry
      item_in_cart = LineItem.find_or_create_by(item: item, cart: self)
      item.inventory -= item_in_cart.quantity
      item.save
    end
  end

end
