class CreateRestaurantItems < ActiveRecord::Migration
  def change
    create_table :restaurant_items do |t|
      t.integer :restaurant_id
      t.integer :item_id
      t.integer :cost
      t.timestamps null: false
    end
  end
end
