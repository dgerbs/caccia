FactoryGirl.define do
  factory :user do
    name 'John Smith'
    sequence(:email) { |n| "foo#{n}@gmail.com" }
    password '12345678'
  end
end
