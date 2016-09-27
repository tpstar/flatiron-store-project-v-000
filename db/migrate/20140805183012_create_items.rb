class CreateItems < ActiveRecord::Migration
  def change
    t.string :title
    t.integer :inventory
    t.decimal :price, scale: 2
    t.integer :category_id
  end
end
