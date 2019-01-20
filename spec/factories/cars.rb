FactoryBot.define do

  factory :car do
    name { "MyString" }
    model { "MyString" }
    price { "MyString" }
    favorite { false }
    summary { "MyText" }
    horsepower { 1 }
    max_speed { 1 }
    acceleration_secs { 1.5 }
    drive { "MyString" }
    body { "MyString" }
    image1 { "MyString" }
    image2 { "MyString" }
    make { nil }
  end

  factory :car_with_make  do
    after_create do |car|
      car.makes << Factory.create(:make)
    end
  end
end
