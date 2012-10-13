# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :student do
    name "MyString"
    college "MyString"
    availability "MyString"
    email "MyString"
    phone "MyString"
    city_id 1
  end
end
