class Car < ApplicationRecord
  belongs_to :make

  validates :name, :summary, :model, :price, :drive, :body, :image1, :image2, presence: true
  validates :favorite, inclusion: { in: [true, false]}
  validates :horsepower, :max_speed, numericality: { only_integer: true } 
  validates :acceleration_secs, numericality: true 
  

end
