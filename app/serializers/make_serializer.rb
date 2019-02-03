class MakeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :unique

  has_many :cars
end

