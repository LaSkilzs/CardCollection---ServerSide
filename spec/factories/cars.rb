FactoryBot.define do
  factory :car do
    name { "MyString" }
    model { "MyString" }
    price { 1.5 }
    favorite { false }
    summary { "MyText" }
    horsepower { 1 }
    max_speed { 1 }
    acceleration { 1.5 }
    drive { "MyString" }
    type { "" }
    image1 { "MyString" }
    image2 { "MyString" }
    make { nil }
  end
end
