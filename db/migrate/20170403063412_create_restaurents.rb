class CreateRestaurents < ActiveRecord::Migration
  def change
    create_table :restaurents do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
