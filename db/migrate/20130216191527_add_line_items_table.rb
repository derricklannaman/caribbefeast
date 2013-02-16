class AddLineItemsTable < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :cart_id
      t.integer :meal_id
      t.timestamps
    end
  end

end
