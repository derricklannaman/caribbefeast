class AddOrdersTable < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :address
      t.string :payment
      t.integer :meal_id
      t.integer :customer_id

      t.timestamps
    end
  end

end
