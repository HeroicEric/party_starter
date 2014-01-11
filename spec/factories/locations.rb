# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :location do
    name "MyString"
    street_address "MyString"
    city "MyString"
    state "MyString"
    zip_code "MyString"
  end
end
