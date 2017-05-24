FactoryGirl.define do
  factory :event do
    name            {Faker::Name.name}
    description     {Faker::Lorem.sentence(10)}
    location        {Faker::Address.city}
    price           {Faker::Commerce.price}
    capacity        {Faker::Number.number(2)}
    includes_food   {Faker::Boolean.boolean(0.2)}
    includes_drinks {Faker::Boolean.boolean}
    start_at        Time.now
    ends_at         Time.now
    user            {build(:user)}

    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
