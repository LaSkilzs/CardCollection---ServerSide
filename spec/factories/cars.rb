FactoryBot.define do

  factory :car, aliases: [:maker] do
    name { "S 560" }
    model { "Maybach" }
    price { "$170,750" }
    favorite { false }
    summary { "MyText" }
    horsepower { 463 }
    max_speed { 1 }
    acceleration_secs { 4.7 }
    drive { "AWD" }
    body { "Sedan" }
    image1 { "MyString" }
    image2 { "MyString" }
    make_id { nil }
  end

end




