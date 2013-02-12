class AddMealsTable < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.integer :destination_id

      t.timestamps
    end
  end

end
