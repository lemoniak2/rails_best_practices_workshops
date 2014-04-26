FactoryGirl.define do
  factory :request do
    title { Faker::Movie.title }
    description { Faker::Lorem.sentence }
  end
end