# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    title "MyString"
    association :location 
    theme "MyString"
    rsvp_min 1
    rsvp_max 1
    description "MyText"
  end
end
