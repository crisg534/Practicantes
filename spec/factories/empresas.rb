# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :empresa do
    nombre "MyString"
    nit 1
    telefono 1
    email "MyString"
    url "MyString"
    nombre_contacto "MyString"
  end
end
