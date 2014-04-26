# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :request do
    user ""
    title "MyString"
    description "MyText"
  end
end
