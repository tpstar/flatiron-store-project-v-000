class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :cart_id
      t.string :status
      t.integer :total
    end
  end
end
