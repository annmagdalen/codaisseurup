FactoryGirl.define do
  factory :event do
    name            "Quiz"
    description     {Faker::Lorem.sentence(10)}
    location        "Amsterdam"
    price           {Faker::Commerce.price}
    capacity        100
    includes_food   false
    includes_drinks true
    start_at        {Faker::DateTime.backward}
    ends_at         {Faker::DateTime.backward}
    user            {build(:user)}

    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
