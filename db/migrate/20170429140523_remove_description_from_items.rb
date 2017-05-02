class RemoveDescriptionFromItems < ActiveRecord::Migration
  def change
    remove_column :items, :serial, :string
    remove_column :items, :description, :string
    remove_column :items, :restaurent_id, :integer
  end
end
