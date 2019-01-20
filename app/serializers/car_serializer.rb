class CarSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :model, :price, :favorite, :summary, :horsepower, :max_speed, :acceleration_secs, :drive, :body, :image1, :image2, :make_id

  belongs_to :make
end
