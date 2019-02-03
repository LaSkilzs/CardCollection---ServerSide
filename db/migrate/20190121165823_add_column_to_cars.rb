class AddColumnToCars < ActiveRecord::Migration[5.2]
  def change
    add_column :cars, :likes, :integer
    add_column :cars, :unique, :integer

  end
end
