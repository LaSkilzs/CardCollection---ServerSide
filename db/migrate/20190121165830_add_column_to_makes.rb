class AddColumnToMakes < ActiveRecord::Migration[5.2]
  def change
    add_column :makes, :unique, :integer
  end
end
