class Cart < ActiveRecord::Base
  has_many :line_items
  has_many :items, :through => :line_items

  has_many :orders
  has_many :users, :through => :orders
end
