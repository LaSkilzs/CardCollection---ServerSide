class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :model
      t.string :price
      t.boolean :favorite
      t.text :summary
      t.integer :horsepower
      t.integer :max_speed
      t.float :acceleration_secs
      t.string :drive
      t.string :body
      t.string :image1
      t.string :image2
      t.references :make, foreign_key: true

      t.timestamps
    end
  end
end
