class CreateOrders < ActiveRecord::Migration
  def change
    t.integer :user_id
    t.integer :cart_id
    t.string :status
    t.integer :total
  end
end
