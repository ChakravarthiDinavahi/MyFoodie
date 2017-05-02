class AddTypeToRestaurents < ActiveRecord::Migration
  def change
    add_column :restaurents, :type, :string
  end
end
