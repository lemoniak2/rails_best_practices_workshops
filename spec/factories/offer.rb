FactoryGirl.define do
  factory :offer do
    message { Faker::Lorem.sentence }
  end
end