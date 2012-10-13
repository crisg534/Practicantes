# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :offer do
    enterprise_id 1
    name "MyString"
    description "MyString"
    city_id 1
  end
end
