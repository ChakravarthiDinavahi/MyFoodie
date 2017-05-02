class CreateRestaurentItems < ActiveRecord::Migration
  def change
    create_table :restaurent_items do |t|
      t.integer :restaurent_id
      t.integer :item_id
      t.integer :cost
      t.timestamps null: false
    end
  end
end
