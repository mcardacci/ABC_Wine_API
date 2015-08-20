FactoryGirl.define do 
  factory :product do
    name {Faker::Internet.user_name}
    description {Faker::Lorem.sentence}
    retail_price {Faker::Number.decimal(2)}
    rating {Faker::Number.decimal(2)}
    vineyard {Faker::Name.last_name}

    factory :invalid_product do
      name nil
    end
  end
end