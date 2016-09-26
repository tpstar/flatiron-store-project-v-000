class CreateItems < ActiveRecord::Migration
  def change
    t.string :title
    t.integer :inventory
    t.integer :decimal
  end
end
